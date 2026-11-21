#!/usr/bin/env python3
"""频道 pin 守卫：本仓的包只跟随上游发版 tag，且必须跟到最新一版。

规则（见 README「pin 模型」）：

1. 非 `-git` 包只能钉 `<component>-v<version>` tag 的提交，不允许钉
   main 上的裸 commit；
2. 每次上游发版后必须同步 bump，落后一个版本即失败——本脚本在
   `.github/workflows/pins.yml` 里每日跑一次，漏 bump 最多一天就标红；
3. 确实要跟 commit 的包一律以 `-git` 结尾（当前只有 quickshell 分叉），
   本脚本跳过它们。

用法：python3 tools/check-pins.py [--repo-root .] [--upstream URL]
"""

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

UPSTREAM = "https://github.com/nosDshell/nosd"

# 频道覆盖的组件。上游新组件是否进频道由人决定，所以这里是显式登记表：
# 新增组件同时改这里、guix/nosd/{packages,themes}.scm 与 flake.nix。
COMPONENTS = (
    "nosdshell",
    "nosd-gtk-theme",
    "nosd-kvantum-theme",
    "fcitx5-theme-nosd",
)

# (define %<component>-(version|commit|hash) "...")
PIN_RE = re.compile(r'\(define %([a-z0-9-]+)-(version|commit|hash)\s+"([0-9a-zA-Z.]+)"\)')
# nosdshellVersion = "1.7.7_" + (nosdshell.shortRev or "dirty")
FLAKE_SHELL_VERSION_RE = re.compile(r'nosdshellVersion = "([0-9.]+)_"')
# <component>.url = "github:nosDshell/nosd/<40-hex rev>";
FLAKE_INPUT_RE = re.compile(
    r'^\s*([a-z0-9-]+)\.url = "github:nosDshell/nosd/([0-9a-f]{40})";', re.M
)
# (name "<pkg>-git")
GIT_NAME_RE = re.compile(r'\(name "([a-z0-9-]+-git)"\)')
# pname = "<component>"; version = "<x.y.z>";
NIX_THEME_RE = re.compile(r'pname = "([a-z0-9-]+)";\s*version = "([0-9.]+)";')


def upstream_tags(url):
    """tag 名 -> 该 tag 指向的提交（annotated tag 取 ^{} 那一行）。"""
    out = subprocess.run(
        ["git", "ls-remote", "--tags", url],
        check=True,
        capture_output=True,
        text=True,
    ).stdout
    peeled, plain = {}, {}
    for line in out.splitlines():
        sha, _, ref = line.partition("\t")
        if not ref.startswith("refs/tags/"):
            continue
        name = ref[len("refs/tags/"):]
        if name.endswith("^{}"):
            peeled[name[:-3]] = sha
        else:
            plain[name] = sha
    for name, sha in plain.items():
        peeled.setdefault(name, sha)
    return peeled


def version_key(version):
    return tuple(int(part) for part in version.split("."))


def component_versions(tags, component):
    """该组件的 tag 版本 -> tag 名。"""
    pattern = re.compile(r"^%s-v(\d+(?:\.\d+)*)$" % re.escape(component))
    found = {}
    for tag in tags:
        match = pattern.match(tag)
        if match:
            found[match.group(1)] = tag
    return found


def read_pins(root):
    """合并两个 .scm 里的 %<component>-version/-commit/-hash。"""
    pins = {}
    for rel in ("guix/nosd/packages.scm", "guix/nosd/themes.scm"):
        text = (root / rel).read_text()
        for match in PIN_RE.finditer(text):
            component, field, value = match.groups()
            pins.setdefault(component, {})[field] = value
    return pins


def read_flake_inputs(root):
    text = (root / "flake.nix").read_text()
    return {name: rev for name, rev in FLAKE_INPUT_RE.findall(text)}


def read_flake_lock_revs(root):
    """flake.lock 的 locked/original rev，按 input 名索引。"""
    nodes = json.loads((root / "flake.lock").read_text())["nodes"]
    return {
        name: {
            field: node.get(field, {}).get("rev")
            for field in ("locked", "original")
        }
        for name, node in nodes.items()
    }


def read_nix_theme_versions(root):
    text = (root / "nix/packages/themes.nix").read_text()
    return dict(NIX_THEME_RE.findall(text))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", default=".", help="nosd-pkgs 工作树根")
    parser.add_argument("--upstream", default=UPSTREAM, help="上游 nosd 仓")
    args = parser.parse_args()

    root = Path(args.repo_root)
    tags = upstream_tags(args.upstream)
    pins = read_pins(root)
    flake_inputs = read_flake_inputs(root)
    flake_lock_revs = read_flake_lock_revs(root)
    nix_themes = read_nix_theme_versions(root)

    shell_version_match = FLAKE_SHELL_VERSION_RE.search((root / "flake.nix").read_text())

    errors = []
    for component in COMPONENTS:
        pin = pins.get(component, {})
        missing = {"version", "commit"} - pin.keys()
        if missing:
            errors.append(
                "%s: 找不到 pin（guix/*.scm 里缺 %s）"
                % (component, "/".join(sorted(missing)))
            )
            continue

        version, commit = pin["version"], pin["commit"]
        tag = "%s-v%s" % (component, version)

        if tag not in tags:
            errors.append("%s: 钉的 tag %s 在上游不存在" % (component, tag))
        elif tags[tag] != commit:
            errors.append(
                "%s: commit %s 不是 %s 的提交（tag 指向 %s）"
                % (component, commit[:12], tag, tags[tag][:12])
            )

        released = component_versions(tags, component)
        if not released:
            errors.append("%s: 上游没有任何 %s-v* tag" % (component, component))
        else:
            latest = max(released, key=version_key)
            if version_key(version) < version_key(latest):
                errors.append(
                    "%s: 频道落后发版——pin %s，上游最新 %s（发版后必须同步 bump）"
                    % (component, version, released[latest])
                )

        flake_rev = flake_inputs.get(component)
        if flake_rev is None:
            errors.append("%s: flake.nix 里没有对应 input" % component)
        elif flake_rev != commit:
            errors.append(
                "%s: flake input %s 与 Guix pin %s 不一致"
                % (component, flake_rev[:12], commit[:12])
            )
        lock = flake_lock_revs.get(component, {})
        for field in ("locked", "original"):
            lock_rev = lock.get(field)
            if lock_rev != commit:
                errors.append(
                    "%s: flake.lock %s rev %s 与 flake.nix/Guix pin %s 不一致"
                    % (
                        component,
                        field,
                        (lock_rev or "缺失")[:12],
                        commit[:12],
                    )
                )

        if component == "nosdshell":
            if shell_version_match is None:
                errors.append("flake.nix: 解析不到 nosdshellVersion")
            elif shell_version_match.group(1) != version:
                errors.append(
                    "flake.nix: nosdshellVersion %s 与 Guix pin %s 不一致"
                    % (shell_version_match.group(1), version)
                )
        elif component in nix_themes and nix_themes[component] != version:
            errors.append(
                "nix/packages/themes.nix: %s 版本 %s 与 Guix pin %s 不一致"
                % (component, nix_themes[component], version)
            )

    git_packages = sorted(
        set(
            GIT_NAME_RE.findall(
                (root / "guix/nosd/packages.scm").read_text()
                + (root / "guix/nosd/themes.scm").read_text()
            )
        )
    )

    for component in COMPONENTS:
        pin = pins.get(component, {})
        if not errors and pin:
            print("ok  %-22s %s" % (component, "%s-v%s" % (component, pin["version"])))
    if git_packages:
        print("--  VCS 包跳过（-git 后缀）：" + ", ".join(git_packages))

    if errors:
        print("\n频道 pin 校验失败：", file=sys.stderr)
        for error in errors:
            print("  - " + error, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
