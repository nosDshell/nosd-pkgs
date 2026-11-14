{
  description = "nosd-pkgs — nosDshell 生态的 Nix 分发：shell、quickshell fork、主题组件、Home/NixOS 模块";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # nosd monorepo：每组件一个 input 钉各自 <component>-v<version> tag，
    # 可独立升级（nix flake update nosd-gtk-theme 只动该组件）。
    # 首个组件 tag 就位前统一 pin 重构后 commit。
    nosdshell.url = "github:nosDshell/nosd/260ffde33ee1edb9cb885c17ff36211fe87b4f6a";
    nosd-gtk-theme.url = "github:nosDshell/nosd/260ffde33ee1edb9cb885c17ff36211fe87b4f6a";
    nosd-kvantum-theme.url = "github:nosDshell/nosd/260ffde33ee1edb9cb885c17ff36211fe87b4f6a";
    fcitx5-theme-nosd.url = "github:nosDshell/nosd/260ffde33ee1edb9cb885c17ff36211fe87b4f6a";
  };

  outputs =
    {
      self,
      nixpkgs,
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
      nosdshellVersion = "1.7.6.1_" + (nosdshell.shortRev or "dirty");

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
