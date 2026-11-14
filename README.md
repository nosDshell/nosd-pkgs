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
├── packages.scm              # (nosd packages): quickshell-nosd, nosd-blur,
│                             #   nosd-helpers, nosd-theme, nosdshell
├── themes.scm                # (nosd themes): nosd-gtk-theme,
│                             #   nosd-kvantum-theme, fcitx5-theme-nosd,
│                             #   nosd-themes (union)
├── rust-crates.scm           # (nosd rust-crates): 三个 Rust 工具的
│                             #   vendored crate inputs（生成物，勿手改）
└── home/services/desktop.scm # (nosd home services desktop):
                              #   home-nosdshell-service-type
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

- 包：`packages.<system>.{nosdshell, nosd-gtk-theme, nosd-kvantum-theme,
  fcitx5-theme-nosd}`（`default` = nosdshell）
- overlay：`overlays.default`
- Home Manager：`homeModules.default` → `programs.nosdshell`
- NixOS：`nixosModules.default` → `services.nosdshell`
- 开发 shell：`nix develop github:nosDshell/nosd-pkgs#dev`
  （qmllint/qmlfmt/lefthook/nix 工具链）

## pin 模型

monorepo 组件独立发版（`<component>-v<version>` tag），本仓**按组件
pin**：

- Guix：每个包独立的 version/commit/hash（`nosd-source` helper）；
  nosdshell 组（shell + 三个 Rust 工具）共享 `%nosdshell-source`，
  因为 `tools/` 与 shell 同树演进。
- Nix：每组件一个 flake input，钉组件 tag；
  `nix flake update <input>` 只升级该组件。

**过渡期**：首个 `nosdshell-v*` tag 出现前，全部 pin
重构后 commit `a3a985e`。旧 `v1.7.x` tag 指向 monorepo 前的根布局
（shell 在仓根），不能用于 `packages/nosdshell` 打包。

## 更新流程（手动，本地签名）

1. 组件发版后，改对应 version/commit/hash：
   - Guix：`git worktree add /tmp/wt <tag>` →
     `guix hash -S nar -x /tmp/wt` → `git worktree remove /tmp/wt`
   - Nix：更新 flake input 的 ref，`nix flake update <input>`
2. `quickshell-nosd` pin 只在 fork 推进时动（`packages.scm` 里
   commit + base32，以及 nosdshell wrapper 的 `--version` 行）。
3. 本地 GPG 签名提交，不交给 bot。

## 开发回环

在 nosd monorepo 的工作树上构建（不打 commit/pin）：

```sh
# Guix：在 nosd/packages/nosdshell 下
guix build -L ../../../nosd-pkgs/guix -f guix.scm

# Nix：override input 指向本地 checkout
nix build ../nosd-pkgs#nosdshell --override-input nosdshell ../nosd
```
