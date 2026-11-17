# nosd 主题组件包 —— 各 src 由 flake 对应组件 input 传入。
{
  lib,
  stdenvNoCC,
  srcs,
}:
let
  mkTheme =
    {
      pname,
      version,
      src,
      installPhase,
      description,
    }:
    stdenvNoCC.mkDerivation {
      inherit
        pname
        version
        src
        installPhase
        ;
      dontConfigure = true;
      dontBuild = true;
      meta = {
        inherit description;
        homepage = "https://github.com/nosDshell/nosd";
        license = lib.licenses.gpl3Plus;
      };
    };
in
{
  nosd-gtk-theme = mkTheme {
    pname = "nosd-gtk-theme";
    version = "0.3.0";
    src = srcs.nosd-gtk-theme;
    description = "DDE 15-style GTK themes (deepin / deepin-dark) for the nosDshell desktop";
    installPhase = ''
      mkdir -p $out/share/themes $out/share/doc/nosd-gtk-theme
      cp -r deepin deepin-dark $out/share/themes/
      cp README.md README.zh_CN.md CHANGELOG.md LICENSE $out/share/doc/nosd-gtk-theme/ 2>/dev/null || true
    '';
  };

  nosd-kvantum-theme = mkTheme {
    pname = "nosd-kvantum-theme";
    version = "0.4.0";
    src = srcs.nosd-kvantum-theme;
    description = "nosd Kvantum theme for Qt applications";
    installPhase = ''
      mkdir -p $out/share/Kvantum $out/share/doc/nosd-kvantum-theme
      cp -r KvLibadwaita $out/share/Kvantum/
      cp CHANGELOG.md $out/share/doc/nosd-kvantum-theme/ 2>/dev/null || true
    '';
  };

  fcitx5-theme-nosd = mkTheme {
    pname = "fcitx5-theme-nosd";
    version = "1.2.0";
    src = srcs.fcitx5-theme-nosd;
    description = "deepin-style fcitx5 input method skins (deepin-light / deepin-dark)";
    installPhase = ''
      mkdir -p $out/share/fcitx5/themes $out/share/doc/fcitx5-theme-nosd
      cp -r deepin-light deepin-dark $out/share/fcitx5/themes/
      cp README.md CHANGELOG.md $out/share/doc/fcitx5-theme-nosd/ 2>/dev/null || true
    '';
  };
}
