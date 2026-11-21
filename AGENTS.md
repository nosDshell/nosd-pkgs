# AGENTS.md：nosd-pkgs

nosDshell 生态的分发仓：Guix channel（`(nosd packages)`、`(nosd themes)`、
`(nosd dlea)`、home services）加 Nix flake。上游组件各自独立提交，
本仓只保存包定义与 pin。

## 提交纪律

- **所有 commit 必须带 GPG 签名，未经签名的 commit 不允许进入本仓库。**
  每次提交都用 `git commit -S`，不要用 `--no-gpg-sign`，不要关闭
  `commit.gpgsign`，也不要把未签名提交推到这里。
- 签名失败要先修签名环境，而不是降级提交。本仓的 pinentry 在无 tty 的
  agent 会话里会超时：在能看见密码框的终端里先解锁
  （`echo | gpg --clearsign > /dev/null`），回到 agent 会话后签名可用；
  agent 缓存过期就重复这一步。
- 已经落地的未签名提交，只在**尚未推送**时补签：
  `git rebase --exec 'git commit --amend --no-edit -S' <最后一个已签名提交>`。
  已推送的历史默认不重写，改为在后续提交里说明并请维护者处理。
- 本仓启用 channel 认证：`.guix-authorizations` 之后的提交必须由授权
  key 签名，pre-push 跑 `guix git authenticate`。新增授权 key 时同时更新
  `.guix-authorizations` 与 `keyring` 分支。
- 提交信息用 Conventional Commits；正文只写实际跑过的检查。

## 布局

```
guix/nosd/
├── packages.scm              # (nosd packages): nosdshell 及三个 Rust 工具
├── themes.scm                # (nosd themes)
├── dlea.scm                  # (nosd dlea): dlea、dlea-git
├── dlea-rust-crates.scm      # (nosd dlea-rust-crates): dlea 的 vendored crate
├── rust-crates.scm           # (nosd rust-crates): nosd 工具的 vendored crate
└── home/services/desktop.scm
nix/packages/*.nix            # 每个组件一个包定义
nix/modules/                  # home.nix、nixos.nix
```

`*-rust-crates.scm` 是生成物：`guix import crate --lockfile=./Cargo.lock <包名>`
的输出经拆分脚本落到文件里，不要手改版本号或哈希。

## 升级 pin

- `guix/nosd/packages.scm` 的 `%nosdshell-commit`、`guix/nosd/dlea.scm` 的
  `%dlea-commit`、`flake.nix` 里对应的 input rev 与 `flake.lock` 的
  locked/original rev、`lastModified`、`narHash` 必须同步升级，否则
  Guix 与 Nix 装出的不是同一棵树；`check-pins.py` 校验三处 rev。
- Dlea 的 `dlea` 跟 fork 的发布快照，`dlea-git` 跟 main；`dlea` 换到
  release tag 时，把 `dlea-git` 的 `git-version` 修订号归零。
- 改完跑验证：`guix build -L guix dlea dlea-git`（Guix）、
  `nix build .#dlea`（Nix）。两条都过再提交。

## 已知环境事实

- 本机 Guix 的 rust 是 1.98.1，而 Dlea 的 workspace 声明
  `rust-version = 1.99`。树在 1.98.1 上能编译，所以两个 recipe 都传
  `--ignore-rust-version`；`cargo install` 也要这个参数，`dlea.scm` 因此
  替换了标准 `install` 阶段。
- Dlea 的 `gpui-omarchy` 是 git 依赖且本身是虚拟 workspace：Guix 侧用
  单个 checkout 加 Cargo.toml / Cargo.lock 改写（path 依赖），Nix 侧用
  `cargoLock.outputHashes` 给 15 个 crate 同一个 hash。
