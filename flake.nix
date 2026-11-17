{
  description = "nosd-pkgs — nosDshell 生态的 Nix 分发：shell、quickshell fork、主题组件、Home/NixOS 模块";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Dlea：flea 的 fork，整体改名 dlea（二进制、D-Bus、数据路径）。
    # 固定到改名提交；与 Guix 侧 (nosd dlea) 的 %dlea-commit 同步升级。
    dlea-src.url = "github:nosDshell/Dlea/d41392b9bdd504609c9d0ef3dda9c3bc2527c8b9";
    # Dlea 仓没有 flake.nix，这里只要它的源码树。
    dlea-src.flake = false;

    # nosd monorepo：每组件一个 input，钉该组件最新 <component>-v<version>
    # tag 的提交，可独立升级（nix flake update nosd-gtk-theme 只动该组件）。
    # 不跟 main 上的裸 commit；tag 一致性由 tools/check-pins.py 校验。
    nosdshell.url = "github:nosDshell/nosd/6358454001a654c0e79b46d3e609f3f5c4659d87";
    nosdshell.flake = false;
    nosd-gtk-theme.url = "github:nosDshell/nosd/6358454001a654c0e79b46d3e609f3f5c4659d87";
    nosd-gtk-theme.flake = false;
    nosd-kvantum-theme.url = "github:nosDshell/nosd/0f3cf1a9d754c6312ed4c563c767d4ccdce84f0b";
    nosd-kvantum-theme.flake = false;
    fcitx5-theme-nosd.url = "github:nosDshell/nosd/1835d8a0546e2f38834dbd0ccc3818d78833ba5e";
    fcitx5-theme-nosd.flake = false;
  };

  outputs =
    {
      self,
      nixpkgs,
      dlea-src,
      nosdshell,
      nosd-gtk-theme,
      nosd-kvantum-theme,
      fcitx5-theme-nosd,
      ...
    }:
    let
      eachSystem = nixpkgs.lib.genAttrs nixpkgs.lib.platforms.linux;
      pkgsFor = eachSystem (
        system:
        nixpkgs.legacyPackages.${system}.appendOverlays [
          self.overlays.default
        ]
      );

      # nosdshell 版本：发版时主版本号跟 Commons/Version.qml baseVersion，
      # shortRev 后缀保留。主题组件版本在 nix/packages/themes.nix。
      nosdshellVersion = "1.7.7.3_" + (nosdshell.shortRev or "dirty");

      themeSrcs = {
        nosd-gtk-theme = nosd-gtk-theme + "/packages/nosd-gtk-theme";
        nosd-kvantum-theme = nosd-kvantum-theme + "/packages/nosd-kvantum-theme";
        fcitx5-theme-nosd = fcitx5-theme-nosd + "/packages/fcitx5-theme-nosd";
      };
    in
    {
      formatter = eachSystem (system: pkgsFor.${system}.nixfmt);

      packages = eachSystem (
        system:
        {
          default = pkgsFor.${system}.nosdshell;
          inherit (pkgsFor.${system})
            dlea
            nosdshell
            nosd-gtk-theme
            nosd-kvantum-theme
            fcitx5-theme-nosd
            ;
        }
      );

      overlays = {
        default = final: prev:
          let
            themes = final.callPackage ./nix/packages/themes.nix {
              srcs = themeSrcs;
            };
          in
          {
            dlea = final.callPackage ./nix/packages/dlea.nix {
              src = dlea-src;
              version = "0.4.3";
            };
            nosdshell = final.callPackage ./nix/packages/nosdshell.nix {
              src = nosdshell + "/packages/nosdshell";
              version = nosdshellVersion;
            };
            inherit (themes)
              nosd-gtk-theme
              nosd-kvantum-theme
              fcitx5-theme-nosd
              ;
          };
      };

      devShells = eachSystem (system: {
        default = pkgsFor.${system}.callPackage ./nix/dev-shell.nix { };
        dev = self.devShells.${system}.default;
      });

      homeModules.default =
        {
          pkgs,
          lib,
          ...
        }:
        {
          imports = [ ./nix/modules/home.nix ];
          programs.nosdshell.package =
            lib.mkDefault
              self.packages.${pkgs.stdenv.hostPlatform.system}.nosdshell;
        };

      nixosModules.default =
        {
          pkgs,
          lib,
          ...
        }:
        {
          imports = [ ./nix/modules/nixos.nix ];
          services.nosdshell.package =
            lib.mkDefault
              self.packages.${pkgs.stdenv.hostPlatform.system}.nosdshell;
        };
    };
}
