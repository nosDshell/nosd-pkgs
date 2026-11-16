# dlea — 打包 nosDshell/Dlea（flea 的 fork，整体改名为 dlea）的文件管理器。
# src 由 flake 的 dlea-src input 传入；workspace 产出两个二进制：
# 根 crate（dlea）与 crates/dlea-gui。
{
  lib,
  stdenv,
  rustPlatform,
  src,
  version,
  pkg-config,
  patchelf,
  makeWrapper,
  python3,
  expect,
  bash,
  fontconfig,
  freetype,
  gdk-pixbuf,
  glib,
  libGL,
  libxcb,
  libxkbcommon,
  vulkan-loader,
  wayland,
  zlib,
}:
let
  pythonPath = lib.makeSearchPath "lib/python3/site-packages" [ ];
  # GPUI 的 git 依赖是同一个 workspace 里的 15 个 crate，cargoLock 按
  # name-version 键要求各自的 outputHash；同一 rev 即同一棵树，所以全同值。
  gpuiHash = "sha256-ImKiaoc3Jcweq6mtL5zPaifNG3K1A6kHYE1ogfPtLeQ=";
  gpuiPackages = [
    "gpui-pre"
    "gpui-pre-collections"
    "gpui-pre-derive-refineable"
    "gpui-pre-http-client"
    "gpui-pre-linux"
    "gpui-pre-macros"
    "gpui-pre-platform"
    "gpui-pre-refineable"
    "gpui-pre-scheduler"
    "gpui-pre-shared-string"
    "gpui-pre-sum-tree"
    "gpui-pre-util"
    "gpui-pre-wgpu"
    "gpui-pre-ztracing"
    "gpui-pre-ztracing-macro"
  ];
in
rustPlatform.buildRustPackage {
  pname = "dlea";
  inherit version src;

  cargoLock = {
    lockFile = "${src}/Cargo.lock";
    outputHashes = lib.genAttrs (map (n: "${n}-0.3.9") gpuiPackages) (_: gpuiHash);
  };

  # workspace 的 default-members 只含根 crate，窗口 crate 要显式构建。
  # --ignore-rust-version：workspace 声明 rust-version 1.99，nixpkgs 的
  # rustc 可能更旧；树本身在 1.98 上已构建通过。
  cargoBuildFlags = [
    "--workspace"
    "--ignore-rust-version"
  ];

  doCheck = false;

  nativeBuildInputs = [
    pkg-config
    patchelf
    makeWrapper
  ];

  buildInputs = [
    expect
    fontconfig
    freetype
    gdk-pixbuf
    glib
    libGL
    libxcb
    libxkbcommon
    python3
    python3.pkgs.pygobject3
    vulkan-loader
    wayland
    zlib
  ];

  # 源码里写死 /usr 的四处（两个 D-Bus 激活文件、两个 helper 的 exec 名）
  # 与 helper 的 shebang；与 Guix recipe 的 patch-absolute-paths 对应。
  postPatch = ''
    substituteInPlace packaging/org.freedesktop.impl.portal.desktop.dlea.service \
      --replace-fail "/usr/lib/dlea/dlea-portal" "$out/libexec/dlea/dlea-portal"
    substituteInPlace packaging/com.nosDshell.dlea.FileManager1.service \
      --replace-fail "/usr/lib/dlea/dlea-filemanager1" "$out/libexec/dlea/dlea-filemanager1"
    substituteInPlace tools/dlea-portal tools/dlea-filemanager1 \
      --replace-fail "/usr/bin/dlea" "$out/bin/dlea"
    substituteInPlace tools/dlea-portal tools/dlea-filemanager1 \
      tools/dlea-mpris tools/dlea-udisks \
      --replace-fail "#!/usr/bin/python3" "#!${python3}/bin/python3"
    substituteInPlace tools/dlea-gio-auth \
      --replace-fail "#!/usr/bin/expect -f" "#!${expect}/bin/expect -f"
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin $out/libexec/dlea $out/share/dlea
    install -m755 target/release/dlea target/release/dlea-gui $out/bin/
    install -m755 tools/dlea-portal tools/dlea-filemanager1 \
      tools/dlea-mpris tools/dlea-udisks tools/dlea-gio-auth \
      $out/libexec/dlea/
    cp -r ui shelf $out/share/dlea/
    mkdir -p $out/share/dlea/i18n
    for catalog in i18n/*/dlea.json; do
      lang=$(basename "$(dirname "$catalog")")
      install -Dm644 "$catalog" "$out/share/dlea/i18n/$lang/dlea.json"
    done
    install -Dm644 packaging/com.nosDshell.dlea.desktop \
      $out/share/applications/com.nosDshell.dlea.desktop
    install -Dm644 packaging/com.nosDshell.dlea.svg \
      $out/share/icons/hicolor/scalable/apps/com.nosDshell.dlea.svg
    install -Dm644 packaging/dlea.portal \
      $out/share/xdg-desktop-portal/portals/dlea.portal
    install -Dm644 packaging/org.freedesktop.impl.portal.desktop.dlea.service \
      $out/share/dbus-1/services/org.freedesktop.impl.portal.desktop.dlea.service
    install -Dm644 packaging/com.nosDshell.dlea.FileManager1.service \
      $out/share/dbus-1/services/com.nosDshell.dlea.FileManager1.service
    install -Dm644 LICENSE $out/share/doc/dlea/LICENSE
    install -Dm644 THIRD-PARTY-LICENSES.txt $out/share/doc/dlea/THIRD-PARTY-LICENSES.txt
    substituteInPlace $out/share/applications/com.nosDshell.dlea.desktop \
      --replace-fail "Exec=dlea " "Exec=$out/bin/dlea "
    runHook postInstall
  '';

  # GPUI 通过 dlopen 取 Wayland、Vulkan 与 libglvnd，gdk-pixbuf/glib 也是
  # 间接链接；这些都不会进 rustc 生成的 RUNPATH，两个入口都要补。
  postFixup = ''
    patchelf --add-rpath "${lib.makeLibraryPath [
      wayland
      libxkbcommon
      libxcb
      vulkan-loader
      libGL
      gdk-pixbuf
      glib
      fontconfig
      freetype
      zlib
    ]}" $out/bin/dlea $out/bin/dlea-gui

    for helper in dlea-portal dlea-filemanager1 dlea-mpris dlea-udisks; do
      wrapProgram $out/libexec/dlea/$helper \
        --prefix PYTHONPATH : "${python3}/${python3.sitePackages}:${python3.pkgs.pygobject3}/${python3.sitePackages}" \
        --prefix GI_TYPELIB_PATH : "${glib.out}/lib/girepository-1.0"
    done

    for prog in dlea dlea-gui; do
      wrapProgram $out/bin/$prog \
        --set DLEA_UI $out/share/dlea/ui \
        --set DLEA_SHELF $out/share/dlea/shelf \
        --set DLEA_UDISKS $out/libexec/dlea/dlea-udisks
    done
  '';

  meta = {
    description = "Fast, keyboard-first file manager (Dlea fork of Flea)";
    homepage = "https://github.com/nosDshell/Dlea";
    license = lib.licenses.mit;
    mainProgram = "dlea";
    platforms = [ "x86_64-linux" ];
  };
}
