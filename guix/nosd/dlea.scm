;;; SPDX-License-Identifier: GPL-3.0-or-later
;;; Copyright © 2026 BrokenShine <xchai404@gmail.com>
;;;
;;; Packaging for Dlea, the nosDshell fork of the Flea file manager.
;;; Migrated from the jeans channel's (jeans packages desktop) flea recipe,
;;; renamed throughout (binary, D-Bus names, data paths) and split into a
;;; release pin (dlea) and a rolling one (dlea-git).

(define-module (nosd dlea)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix utils)
  #:use-module (guix build-system cargo)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xorg)
  #:use-module (nosd dlea-rust-crates))

;;; dlea is the fork's release snapshot; the fork carries the DDE 15 window
;;; (toolbar, breadcrumb, status bar, search) on top of upstream flea 0.4.3.
;;; dlea-git follows main.
(define %dlea-version "0.4.3")
(define %dlea-commit "d41392b9bdd504609c9d0ef3dda9c3bc2527c8b9")

(define %dlea-source
  (origin
    (method git-fetch)
    (uri (git-reference
          (url "https://github.com/nosDshell/Dlea")
          (commit %dlea-commit)))
    (file-name (git-file-name "dlea" %dlea-version))
    (sha256 (base32 "10h1jinhng3ddlvq19r49ajnvy043wmngqmrhvgn9qwhb55zrq1m"))))

;;; gpui-omarchy is the Omarchy fork of gpui that Dlea pins in its workspace
;;; dependencies.  It is a virtual workspace (crates/gpui-pre and 14 siblings
;;; with path dependencies between them), so the crates cannot be vendored
;;; individually: the whole checkout is one input and the two git declarations
;;; in Dlea's Cargo.toml become path dependencies, the helix-steel pattern.
(define %dlea-gpui-omarchy
  (origin
    (method git-fetch)
    (uri (git-reference
          (url "https://github.com/thisisgm/gpui-omarchy")
          (commit "9b2f11b9e3abfdaa6ac68e8b57f9a598b835a3c9")))
    (file-name (git-file-name "gpui-omarchy" "0.3.9"))
    (sha256 (base32 "1r1dxprq2s2dc03sj0xmf8dws9varyf2zbd9mcgcq99phxma4qi2"))))

;;; Two crates produce binaries: the workspace root (dlea) and crates/dlea-gui.
;;; tests? is #f: the suite needs bubblewrap namespaces, ffmpeg with zscale,
;;; glycin and 40 GiB of free space, none of which a sandboxed build has.
;;; The data install phase mirrors upstream's Makefile, with lib/dlea replaced
;;; by libexec/dlea and the absolute /usr paths patched.
(define-public dlea
  (package
    (name "dlea")
    (version %dlea-version)
    (source %dlea-source)
    (build-system cargo-build-system)
    (arguments
     (let ((python-version
            (version-major+minor (package-version python))))
       (list
        #:rust rust
        #:install-source? #f
        #:tests? #f
        ;; The workspace declares rust-version 1.99 and Guix ships 1.98.1;
        ;; the tree compiles on 1.98.1 (verified with cargo check/build), so
        ;; tell Cargo not to refuse the older compiler.
        #:cargo-build-flags ''("--release" "--ignore-rust-version")
        #:phases
        #~(modify-phases %standard-phases
            ;; The stock install phase calls `cargo install', which enforces
            ;; rust-version too but has no flag slot for the override, so it
            ;; is replaced here rather than kept and patched.
            (replace 'install
              (lambda* (#:key outputs #:allow-other-keys)
                (let ((out (assoc-ref outputs "out")))
                  (invoke "cargo" "install" "--offline" "--no-track"
                          "--ignore-rust-version"
                          "--path" "." "--root" out)
                  (invoke "cargo" "install" "--offline" "--no-track"
                          "--ignore-rust-version"
                          "--path" "crates/dlea-gui" "--root" out))))
            (add-after 'unpack 'patch-gpui-git-dependency
              (lambda* (#:key inputs #:allow-other-keys)
                (let* ((gpui (assoc-ref inputs
                                        "gpui-omarchy-0.3.9-checkout"))
                       (gpui-git
                        (string-append
                         "gpui = \\{ package = \"gpui-pre\", git = \"[^\"]+\","
                         " rev = \"[0-9a-f]+\" \\}"))
                       (platform-git
                        (string-append
                         "gpui_platform = \\{ package = \"gpui-pre-platform\","
                         " git = \"[^\"]+\", rev = \"[0-9a-f]+\","
                         " features = \\[\"font-kit\", \"x11\", \"wayland\","
                         " \"runtime_shaders\"\\] \\}"))
                       (gpui-path (string-append
                                   "gpui = { package = \"gpui-pre\", path = \""
                                   gpui "/crates/gpui-pre\" }"))
                       (platform-path
                        (string-append
                         "gpui_platform = { package = \"gpui-pre-platform\","
                         " path = \"" gpui "/crates/gpui-pre-platform\","
                         " features = [\"font-kit\", \"x11\", \"wayland\","
                         " \"runtime_shaders\"] }")))
                  (substitute* "Cargo.toml"
                    ((gpui-git) gpui-path)
                    ((platform-git) platform-path))
                  ;; A path dependency must not carry a git source in the
                  ;; lock, or Cargo demands a network update it cannot make.
                  (substitute* "Cargo.lock"
                    (("^source = \"git\\+https://github.com/thisisgm\
/gpui-omarchy.*\"$")
                     "")))))
            (add-after 'patch-gpui-git-dependency 'patch-absolute-paths
              (lambda* (#:key inputs outputs #:allow-other-keys)
                (let* ((out (assoc-ref outputs "out"))
                       (dlea (string-append out "/bin/dlea"))
                       (libexec (string-append out "/libexec/dlea")))
                  ;; The two D-Bus helpers are activated by absolute Exec path.
                  (substitute*
                      '("packaging/org.freedesktop.impl.portal.desktop.dlea.service")
                    (("/usr/lib/dlea/dlea-portal")
                     (string-append libexec "/dlea-portal")))
                  (substitute*
                      '("packaging/com.nosDshell.dlea.FileManager1.service")
                    (("/usr/lib/dlea/dlea-filemanager1")
                     (string-append libexec "/dlea-filemanager1")))
                  ;; Both D-Bus helpers open windows by exec'ing the CLI name.
                  (substitute* '("tools/dlea-portal" "tools/dlea-filemanager1")
                    (("/usr/bin/dlea") dlea))
                  ;; These are not under bin/ or libexec/, so the standard
                  ;; patch-shebangs phase never visits them.
                  (substitute* '("tools/dlea-portal" "tools/dlea-filemanager1"
                                 "tools/dlea-mpris" "tools/dlea-udisks")
                    (("#!/usr/bin/python3")
                     (string-append "#!" #$(this-package-input "python")
                                    "/bin/python3")))
                  (substitute* "tools/dlea-gio-auth"
                    (("#!/usr/bin/expect -f")
                     (string-append "#!" #$(this-package-input "expect")
                                    "/bin/expect -f"))))))
            (add-after 'install 'install-data
              (lambda* (#:key outputs #:allow-other-keys)
                (let* ((out (assoc-ref outputs "out"))
                       (share (string-append out "/share/dlea"))
                       (libexec (string-append out "/libexec/dlea")))
                  ;; The UI tree is data the binary resolves through DLEA_UI.
                  (copy-recursively "ui" (string-append share "/ui"))
                  (copy-recursively "shelf" (string-append share "/shelf"))
                  (for-each
                   (lambda (file)
                     (let* ((rel (substring file (string-length "i18n/")))
                            (lang (dirname rel)))
                       (install-file file (string-append share "/i18n/" lang))))
                   (find-files "i18n" "^dlea\\.json$"))
                  (for-each
                   (lambda (file)
                     (install-file file libexec))
                   '("tools/dlea-portal" "tools/dlea-filemanager1"
                     "tools/dlea-mpris" "tools/dlea-udisks"
                     "tools/dlea-gio-auth"))
                  (install-file "packaging/com.nosDshell.dlea.desktop"
                                (string-append out "/share/applications"))
                  (install-file "packaging/com.nosDshell.dlea.svg"
                                (string-append
                                 out "/share/icons/hicolor/scalable/apps"))
                  (install-file "packaging/dlea.portal"
                                (string-append out "/share/xdg-desktop-portal/portals"))
                  (install-file
                   "packaging/org.freedesktop.impl.portal.desktop.dlea.service"
                   (string-append out "/share/dbus-1/services"))
                  (install-file "packaging/com.nosDshell.dlea.FileManager1.service"
                                (string-append out "/share/dbus-1/services"))
                  (install-file "LICENSE"
                                (string-append out "/share/doc/dlea"))
                  (install-file "THIRD-PARTY-LICENSES.txt"
                                (string-append out "/share/doc/dlea"))
                  ;; Exec must be absolute in a store profile.
                  (substitute* (string-append out "/share/applications/"
                                              "com.nosDshell.dlea.desktop")
                    (("^Exec=dlea ")
                     (string-append "Exec=" out "/bin/dlea "))))))
            (add-after 'install-data 'add-runpath
              (lambda* (#:key inputs outputs #:allow-other-keys)
                ;; rustc embeds only the -L paths its build scripts report,
                ;; and GPUI reaches Wayland, Vulkan and libglvnd through
                ;; dlopen, so none of them enter the RUNPATH.  Without this
                ;; the launcher dies on "The wayland library could not be
                ;; loaded".  Both entry points get the same list: the
                ;; launcher links the gpui crates too and fails before it
                ;; ever execs dlea-gui.
                (use-modules (ice-9 popen) (ice-9 rdelim)
                             (srfi srfi-1))
                (let* ((out (assoc-ref outputs "out"))
                       ;; fontconfig's package name is fontconfig-minimal;
                       ;; filter-map keeps an input that is absent from being
                       ;; a build failure in a later Guix revision.
                       (extra (string-join
                               (filter-map
                                (lambda (name)
                                  (let ((path (assoc-ref inputs name)))
                                    (and path (string-append path "/lib"))))
                                '("wayland" "libxkbcommon" "libxcb"
                                  "vulkan-loader" "libglvnd"
                                  "gdk-pixbuf" "glib" "fontconfig-minimal"
                                  "freetype" "zlib"))
                               ":")))
                  (for-each
                   (lambda (bin)
                     (let* ((pipe (open-pipe* OPEN_READ "patchelf"
                                              "--print-rpath" bin))
                            (rpath (read-line pipe)))
                       (close-pipe pipe)
                       (invoke "patchelf" "--set-rpath"
                               (string-append rpath ":" extra) bin)))
                   (list (string-append out "/bin/dlea")
                         (string-append out "/bin/dlea-gui"))))))
            (add-after 'add-runpath 'wrap-programs
              (lambda* (#:key outputs #:allow-other-keys)
                (let* ((out (assoc-ref outputs "out"))
                       (python-path
                        (list (string-append #$python "/lib/python"
                                             #$python-version "/site-packages")
                              (string-append #$python-pygobject
                                             "/lib/python" #$python-version
                                             "/site-packages")))
                       (typelib (list (string-append #$glib
                                                     "/lib/girepository-1.0"))))
                  (for-each
                   (lambda (prog)
                     (wrap-program (string-append out prog)
                       `("PYTHONPATH" ":" prefix ,python-path)
                       `("GI_TYPELIB_PATH" ":" prefix ,typelib)))
                   '("/libexec/dlea/dlea-portal"
                     "/libexec/dlea/dlea-filemanager1"
                     "/libexec/dlea/dlea-mpris"
                     "/libexec/dlea/dlea-udisks"))
                  (for-each
                   (lambda (prog)
                     (wrap-program (string-append out prog)
                       (list "DLEA_UI" "=" '=
                             (list (string-append out "/share/dlea/ui")))
                       (list "DLEA_SHELF" "=" '=
                             (list (string-append out "/share/dlea/shelf")))
                       (list "DLEA_UDISKS" "=" '=
                             (list (string-append out
                                                  "/libexec/dlea/dlea-udisks")))))
                   '("/bin/dlea" "/bin/dlea-gui")))))))))
    (native-inputs (list pkg-config patchelf))
    (inputs
     (cons* %dlea-gpui-omarchy
            bash-minimal
            expect
            fontconfig
            freetype
            gdk-pixbuf
            glib
            libglvnd
            libxcb
            libxkbcommon
            python
            python-pygobject
            vulkan-loader
            wayland
            zlib
            dlea-cargo-inputs))
    (home-page "https://github.com/nosDshell/Dlea")
    (synopsis "Fast, keyboard-first file manager")
    (description
     "Dlea is a keyboard-first graphical file manager: columns, tabs, a
searchable path bar, previews for images, media, PDF, Markdown and archives,
a trash browser and a drop shelf.  This package builds both entry points from
source: @command{dlea} for the CLI and the window, and @command{dlea-gui} for
the window alone.

The file-manager window is a GPU-rendered native application and does not
require a desktop shell.  Optional integrations look for their host programs
on @env{PATH}: media and PDF previews use @command{mpv} and Poppler's GObject
library, HTML previews call @command{qml6}, content search uses
@command{ripgrep}, archive work uses @command{7z}, and the Omarchy shelf
plugin runs the @command{omarchy-*} commands only when it is enabled in
Settings.  The two D-Bus services
(@code{org.freedesktop.impl.portal.desktop.dlea} and
@code{org.freedesktop.FileManager1}) are installed under
@file{share/dbus-1/services} and run the Python GI helpers shipped here.")
    (license license:expat)
    (supported-systems '("x86_64-linux"))))

;;; dlea-git tracks main: same recipe, the revision in the version string is
;;; the moving part.  Both currently pin the same commit - the fork has no
;;; release tag yet - and diverge the first time dlea is bumped to a tag.
(define-public dlea-git
  (package
    (inherit dlea)
    (name "dlea-git")
    (version (git-version %dlea-version "0" %dlea-commit))
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/nosDshell/Dlea")
                    (commit %dlea-commit)))
              (file-name (git-file-name "dlea-git"
                                        (git-version %dlea-version "0"
                                                     %dlea-commit)))
              (sha256 (base32 "10h1jinhng3ddlvq19r49ajnvy043wmngqmrhvgn9qwhb55zrq1m"))))))
