# nosd-pkgs

nosDshell 生态的分发仓库：同时是 **Guix channel** 与 **Nix flake**。
包定义 pin [`nosd` monorepo](https://github.com/nosDshell/nosd) 的组件
tag/commit，以及 [`quickshell-nosd`](https://github.com/nosDshell/quickshell-nosd)
fork。

本仓从两处迁移而来：原 `nosDshell` 仓内的 `.guix-channel`/`nosdshell.scm`/
`flake.nix`/`nix/`（自打包设施），以及 jeans channel 里的 nosd 打包与
home service（`modules/jeans/packages/{desktop,theme}.scm`、
`modules/jeans/home/services/desktop.scm`）。

## 布局

```
guix/nosd/
├── packages.scm              # (nosd packages): quickshell-nosd-git, nosd-blur,
│                             #   nosd-helpers, nosd-theme, nosdshell
├── themes.scm                # (nosd themes): nosd-gtk-theme,
│                             #   nosd-kvantum-theme, fcitx5-theme-nosd,
│                             #   nosd-themes (union)
├── rust-crates.scm           # (nosd rust-crates): 三个 Rust 工具的
│                             #   vendored crate inputs（生成物，勿手改）
└── home/services/desktop.scm # (nosd home services desktop):
                              #   home-nosdshell-service-type
tools/check-pins.py           # pin 守卫：只跟发版 tag、不落后（每日 CI 跑）
flake.nix                     # 包 + overlay + HM/NixOS 模块 + dev shell
nix/packages/                 # nosdshell.nix, themes.nix
nix/modules/                  # home.nix, nixos.nix
nix/dev-shell.nix             # nix develop #dev
```

## Guix

`.guix-channel` 声明 `directory = "guix"`。Channel 启用提交认证
（introduction commit `ffed3941b88829b250a67ce6f8ff0fc6c5d189a0`，
keyring 分支存公钥）。在 `channels.scm` 加入：

```scheme
(cons* (channel
        (name 'nosd)
        (url "https://github.com/nosDshell/nosd-pkgs")
        (branch "main")
        (introduction
         (make-channel-introduction
          "ffed3941b88829b250a67ce6f8ff0fc6c5d189a0"
          (openpgp-fingerprint
           "62711D5E9CCDEC6907CADBF88637132222571907"))))
       %default-channels)
```

本仓开发者注意：`.guix-authorizations` 之后的所有提交必须由授权
key 签名；`.git/config` 已写入 introduction 并安装 pre-push 认证
钩子（`guix git authenticate`）。新增授权 key 时同时更新
`.guix-authorizations` 与 `keyring` 分支。

`guix pull` 后：`guix install nosdshell`，主题包
`nosd-gtk-theme` / `nosd-kvantum-theme` / `fcitx5-theme-nosd` /
`nosd-themes`（union）。

Guix Home 服务：

```scheme
(use-modules (nosd home services desktop))
(service home-nosdshell-service-type)
```

## Nix

flake 输出：`packages.<system>.{nosdshell, nosd-gtk-theme,
nosd-kvantum-theme, fcitx5-theme-nosd}`（`default` = nosdshell）、
`overlays.default`、`homeModules.default`（`programs.nosdshell`）、
`nixosModules.default`（`services.nosdshell`）、`devShells.dev`。

临时试用：`nix run github:nosDshell/nosd-pkgs`。

永久安装（profile）：`nix profile install github:nosDshell/nosd-pkgs#nosdshell`。

NixOS（在你的 flake 里）：

```nix
{
  inputs.nosd-pkgs.url = "github:nosDshell/nosd-pkgs";

  outputs = { nixpkgs, nosd-pkgs, ... }: {
    nixosConfigurations.<主机名> = nixpkgs.lib.nixosSystem {
      modules = [
        nosd-pkgs.nixosModules.default
        { services.nosdshell.enable = true; }
      ];
    };
  };
}
```

Home Manager：

```nix
{
  inputs.nosd-pkgs.url = "github:nosDshell/nosd-pkgs";

  outputs = { home-manager, nosd-pkgs, ... }: {
    homeConfigurations.<用户名> = home-manager.lib.homeManagerConfiguration {
      modules = [
        nosd-pkgs.homeModules.default
        {
          programs.nosdshell = {
            enable = true;
            # settings / colors / user-templates / plugins / pluginSettings
            # 见 nix/modules/home.nix 的 options 块
          };
        }
      ];
    };
  };
}
```

开发 shell：`nix develop github:nosDshell/nosd-pkgs#dev`
（qmllint/qmlfmt/lefthook/nix 工具链）。

## pin 模型

monorepo 组件独立发版（`<component>-v<version>` tag），本仓**按组件
pin，且只跟发版 tag**：

- Guix：每个组件一组 version/commit/hash（`nosd-source` helper）；
  nosdshell 组（shell + 三个 Rust 工具）共享 `%nosdshell-source`，
  因为 `tools/` 与 shell 同树演进。commit 必须是该组件最新 tag 的提交。
- Nix：每组件一个 flake input，钉同一 tag 的提交；
  `nix flake update <input>` 只升级该组件。
- **不追 main 上的裸 commit。** 确实要跟 commit 的包一律以 `-git`
  结尾（当前只有 `quickshell-nosd-git`：fork 没有 tag，只能按
  commit 跟），`check-pins.py` 跳过它们。
- **发版是两段**：`nosd` 仓出包成功只算第一段，同步 bump 本仓才算
  完成。`tools/check-pins.py` 对比上游 tag——落后、commit 不是 tag
  提交、pin 的 tag 不存在都会失败；`.github/workflows/pins.yml` 每日
  跑一次，漏 bump 最多一天就标红。

旧 `v1.7.x` tag 指向 monorepo 前的根布局（shell 在仓根），不能用于
`packages/nosdshell` 打包。

## 更新流程（手动，本地签名）

1. 上游发版后，改对应组件的 version/commit：
   - Guix：`guix/nosd/{packages,themes}.scm` 里该组件的
     `version` + `commit`；tag 指向的提交用
     `git -C ../nosd rev-list -n1 <component>-v<version>` 取。
   - Nix：`flake.nix` 的 input rev（同一提交），主题组件另改
     `nix/packages/themes.nix` 的 version，nosdshell 改
     `nosdshellVersion`。
2. 重算该组件的 hash：`git worktree add /tmp/wt <tag>` →
   `guix hash -S nar -x /tmp/wt` → `git worktree remove /tmp/wt`。
3. `python3 tools/check-pins.py` 必须全绿（它会拉上游 tag 做对比）。
4. `quickshell-nosd-git` pin 只在 fork 推进时动（`packages.scm` 里
   commit + base32，以及 nosdshell wrapper 的 `--version` 行）。
5. 本地 GPG 签名提交，不交给 bot。

## 开发回环

在 nosd monorepo 的工作树上构建（不打 commit/pin）：

```sh
# Guix：在 nosd/packages/nosdshell 下
guix build -L ../../../nosd-pkgs/guix -f guix.scm

# Nix：override input 指向本地 checkout
nix build ../nosd-pkgs#nosdshell --override-input nosdshell ../nosd
```
