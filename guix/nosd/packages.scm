;;; SPDX-FileCopyrightText: 2024, 2025 Murilo <murilo@disroot.org>
;;; SPDX-FileCopyrightText: 2026 BrokenShine <xchai404@gmail.com>
;;; SPDX-License-Identifier: GPL-3.0-or-later
;;;
;;; Packaging for nosDshell, originally the Noctalia v4 recipe from the
;;; Rosenthal channel (https://codeberg.org/hako/Rosenthal), migrated from
;;; the jeans channel's modules/jeans/packages/desktop.scm nosd block and
;;; the former nosDshell repo's nosdshell.scm.
;;;
;;; Sources are git-fetch'd from the nosd monorepo — unlike the old
;;; self-channel, the packages here pin a commit/tag, never local-file.
;;; Transition note: %nosdshell-commit currently pins a post-monorepo
;;; commit on main; switch git-reference to the component tag
;;; "nosdshell-v<version>" once the first prefixed tag exists.  Old
;;; v1.7.x tags point at the pre-monorepo root layout and cannot be
;;; used for packages/nosdshell.

(define-module (nosd packages)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module (guix build-system copy)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages calendar)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages hardware)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages python)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages window-management)
  #:use-module (gnu packages xdisorg)
  #:use-module (nosd rust-crates))

;;;
;;; nosDshell: a quickshell-based Wayland desktop shell and its Rust helpers.
;;;

;; The three helper crates and the shell share one git checkout: the
;; tools/ sub-trees evolve with the shell repository, so pinning them
;; separately makes no sense.  They share %nosdshell-source; the version
;; string follows Commons/Version.qml's baseVersion.
;;
;; The monorepo checkout contains all components; every package phases
;; into packages/nosdshell before building.
(define %nosdshell-version "1.7.6.1")
(define %nosdshell-commit "1ff7693436b1e25b56727eab77909e8ea06f15d1")

(define %nosdshell-source
  (origin
    (method git-fetch)
    (uri (git-reference
          (url "https://github.com/nosDshell/nosd")
          ;; 首个 nosdshell-v* tag 出现后改为
          ;; (commit (string-append "nosdshell-v" %nosdshell-version))
          (commit %nosdshell-commit)))
    (file-name (git-file-name "nosd" %nosdshell-version))
    (sha256
     (base32 "0d0dxl9rnfic0i48vb3cyj2k6xxyx96cf85s71frxvb8py1pj11s"))))

;; Our quickshell fork (nosDshell/quickshell-nosd): upstream master
;; kept linear on top of the version 0.3.2 commit by a daily CI sync
;; (baseline cherry-pick; the baseline sits in .github/upstream-sync-base).
;; Beyond upstream it carries:
;;
;;   - the two pipewire use-after-free fixes the archived noctalia-qs
;;     fork carried and upstream never merged — dangling raw PwNode
;;     pointers in the default-device tracker (903a70a, plus b0a8a7f
;;     making it compile on Qt 6.6) and in the PwNodeIface-bound
;;     volume/peak readers (08e6406).  Both crash the shell when a
;;     pipewire node (USB audio, headphones) disappears.
;;   - PR_SET_PDEATHSIG for managed child processes (5ff26dc): the
;;     long-lived helpers (wl-paste watchers, niri event-stream, nmcli
;;     monitor, udevadm monitor) must not outlive the shell.
;;   - allocator bounds for a long-lived shell (92a7978): mallopt caps
;;     glibc arenas and pins mmap/trim thresholds at startup, and a
;;     QTimer calls malloc_trim every five minutes.  Explicit MALLOC_*
;;     environment (nosdshell's wrapper sets the same values) wins.
;;
;; The fork carries no tags: this is the channel's one VCS-tracking package,
;; hence the -git suffix (tools/check-pins.py skips it) and a plain commit
;; pin.  Bump it by hand together with the commit hash in the wrapper's
;; --version line below.
(define-public quickshell-nosd-git
  (package
    (inherit quickshell)
    (name "quickshell-nosd-git")
    (version "0.3.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nosDshell/quickshell-nosd")
             (commit "472047177d881d0e89c16576601087cd19bff9c9")))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0p1jrly6y1i64w7cjygm8rcv6880w07d0dxiq3k0qxyli0yp0j36"))))
    ;; The keyring prompter builds the org.gnome.keyring.SystemPrompter side
    ;; of oo7's unlock flow on libgcr's GcrSystemPrompter (gcr 4).
    (inputs
     (modify-inputs (package-inputs quickshell)
       (prepend gcr)))))

(define-public nosd-blur
  (package
    (name "nosd-blur")
    (version %nosdshell-version)
    (source %nosdshell-source)
    (build-system cargo-build-system)
    (arguments
     (list #:install-source? #f
           ;; The crate lives in packages/nosdshell/tools/nosd-blur inside
           ;; the shared monorepo checkout.
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'chdir
                          (lambda _
                            (chdir "packages/nosdshell/tools/nosd-blur"))))))
    (inputs nosd-blur-cargo-inputs)
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "Pre-blur wallpapers for nosDshell")
    (description
     "nosd-blur produces a cover-resized, blurred variant of a wallpaper at
exact screen size, so nosDshell surfaces (lock screen, launcher, session
menu) can skip a live blur pass and just draw the cached image.")
    (license license:expat)))

(define-public nosd-helpers
  (package
    (name "nosd-helpers")
    (version %nosdshell-version)
    (source %nosdshell-source)
    (build-system cargo-build-system)
    (arguments
     (list #:install-source? #f
           #:phases
           #~(modify-phases %standard-phases
               (add-after 'unpack 'chdir
                 (lambda _ (chdir "packages/nosdshell/tools/nosd-helpers")))
               ;; `portal run` is a darkman-compatible portal Settings
               ;; backend; shipping the activatable name plus the portal
               ;; descriptor makes `Settings=nosdshell` work out of the box
               ;; for any consumer that installs this package.
               (add-after 'install 'install-portal-files
                 (lambda _
                   (let ((services (in-vicinity
                                    #$output "share/dbus-1/services"))
                         (portals (in-vicinity
                                   #$output
                                   "share/xdg-desktop-portal/portals"))
                         (dbus-name
                          "org.freedesktop.impl.portal.desktop.nosdshell"))
                     (mkdir-p services)
                     (call-with-output-file
                         (in-vicinity services
                                      (string-append dbus-name ".service"))
                       (lambda (p)
                         (format p "[D-BUS Service]~%\
Name=org.freedesktop.impl.portal.desktop.nosdshell~%\
Exec=~a/bin/nosd-helpers portal run~%"
                                 #$output)))
                     (mkdir-p portals)
                     (call-with-output-file
                         (in-vicinity portals "nosdshell.portal")
                       (lambda (p)
                         (format p "[portal]~%\
DBusName=org.freedesktop.impl.portal.desktop.nosdshell~%\
Interfaces=org.freedesktop.impl.portal.Settings~%\
UseIn=niri;sway;Hyprland;labwc;scroll;mangowc;~%")))))))))
    (inputs nosd-helpers-cargo-inputs)
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "Small helper tools for nosDshell")
    (description
     "nosd-helpers is the single Rust binary behind nosDshell's helper
subcommands (vscode-themes, kde-apply-scheme, gtk-refresh, khal-events,
bluetooth-pair, eds-check, eds-calendars, eds-events, apply, wl-probe,
vinput, portal).  QML callers require it; the Scripts/python and
Scripts/bash helpers were removed after the ports reached parity.  The
portal subcommand additionally ships a darkman-compatible
xdg-desktop-portal Settings backend.")
    (license license:gpl3+)))

(define-public nosd-theme
  (package
    (name "nosd-theme")
    (version %nosdshell-version)
    (source %nosdshell-source)
    (build-system cargo-build-system)
    (arguments
     (list #:install-source? #f
           #:phases #~(modify-phases %standard-phases
                        (add-after 'unpack 'chdir
                          (lambda _
                            (chdir "packages/nosdshell/tools/nosd-theme"))))))
    (inputs nosd-theme-cargo-inputs)
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "Material theme processor for nosDshell")
    (description
     "nosd-theme is the Rust port of the former nosDshell theming tree:
wallpaper color extraction, Material tonal schemes and Matugen-compatible
template rendering.")
    (license license:gpl3+)))

(define-public nosdshell
  (package
    (name "nosdshell")
    (version %nosdshell-version)
    (source %nosdshell-source)
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("." "etc/xdg/quickshell/nosdshell"))
      #:imported-modules
      `((guix build qt-utils)
        ,@%copy-build-system-modules)
      #:modules
      '((srfi srfi-26)
        (guix build copy-build-system)
        (guix build qt-utils)
        (guix build utils))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'chdir
            ;; The monorepo checkout holds all components; install only
            ;; the shell subtree.
            (lambda _ (chdir "packages/nosdshell")))
          (add-after 'chdir 'reduce-output-size
            (lambda _
              (delete-file-recursively "Assets/Screenshots")))
          (add-after 'install 'embed-rfkill-path
            (lambda* (#:key inputs #:allow-other-keys)
              ;; rfkill lives in util-linux/sbin, which the wrapper PATH
              ;; does not cover; point the unblock call at the store path.
              (substitute* (string-append
                            #$output
                            "/etc/xdg/quickshell/nosdshell"
                            "/Services/Networking/BluetoothService.qml")
                (("\\[\"rfkill\", \"unblock\", \"bluetooth\"\\]")
                 (string-append "[\"" (search-input-file inputs "sbin/rfkill")
                                "\", \"unblock\", \"bluetooth\"]")))))
          (add-after 'install 'install-completions
            (lambda* (#:key source #:allow-other-keys)
              ;; completions/ holds one file per shell; install each under its
              ;; standard name so profiles pick it up automatically.  source
              ;; is the monorepo root — the component subtree is one level in.
              (let ((share (string-append #$output "/share"))
                    (srcdir (string-append
                             source "/packages/nosdshell/completions")))
                (mkdir-p (string-append share "/bash-completion/completions"))
                (mkdir-p (string-append share "/zsh/site-functions"))
                (mkdir-p (string-append share "/fish/vendor_completions.d"))
                (copy-file (string-append srcdir "/nosdshell.bash")
                           (string-append share "/bash-completion/completions/nosdshell"))
                (copy-file (string-append srcdir "/_nosdshell")
                           (string-append share "/zsh/site-functions/_nosdshell"))
                (copy-file
                 (string-append srcdir "/nosdshell.fish")
                 (string-append share "/fish/vendor_completions.d"
                                "/nosdshell.fish")))))
          (add-after 'install 'make-wrapper
            (lambda* (#:key inputs #:allow-other-keys)
              ;; Write the wrapper straight into the output: the checkout
              ;; root holds a nosdshell/ directory (channel module path),
              ;; so a same-named scratch file here no longer works.
              (let ((script (in-vicinity #$output "bin/nosdshell")))
                (mkdir-p (dirname script))
                ;; --version/-V prints the shell and quickshell versions without
                ;; starting the shell (lowercase -v is quickshell's verbose flag
                ;; and must fall through).  The nosdshell part follows
                ;; %nosdshell-version; keep the quickshell part in sync with
                ;; quickshell-nosd-git above.  The MALLOC block mirrors the wrapper
                ;; the flake's package.nix generates — the fork binary
                ;; mallopts the same defaults in-process, so the env vars are
                ;; the user-facing override path (glibc reads them at startup,
                ;; hence before exec).
                (with-output-to-file script
                  (lambda ()
                    (format #t "~
#!~a
if [ \"$1\" = \"--version\" ] || [ \"$1\" = \"-V\" ]; then
  echo \"nosdshell v~a (with quickshell v0.3.2 4720471)\"
  exit 0
fi
: \"${MALLOC_ARENA_MAX:=4}\"
: \"${MALLOC_MMAP_THRESHOLD_:=131072}\"
: \"${MALLOC_TRIM_THRESHOLD_:=131072}\"
export MALLOC_ARENA_MAX MALLOC_MMAP_THRESHOLD_ MALLOC_TRIM_THRESHOLD_
exec ~a --config ~a/etc/xdg/quickshell/nosdshell \"$@\"~%"
                            (search-input-file inputs "bin/sh")
                            #$%nosdshell-version
                            (search-input-file inputs "bin/quickshell")
                            #$output)))
                (wrap-script script
                  `("PATH"
                    suffix
                    ,(map (compose dirname
                                   (cut search-input-file inputs <>))
                          '("bin/bluetoothctl"
                            "bin/brightnessctl"
                            "bin/cava"
                            "bin/cliphist"
                            "bin/convert"
                            "bin/ddcutil"
                            "bin/dbus-send"
                            "bin/elogind-inhibit"
                            "bin/fastfetch"
                            "bin/fc-list"
                            "bin/find"
                            "bin/getent"
                            "bin/git"
                            "bin/grep"
                            "bin/khal"
                            "bin/ls"
                            "bin/nmcli"
                            "bin/nosd-blur"
                            "bin/nosd-helpers"
                            "bin/nosd-theme"
                            "bin/pgrep"
                            "bin/pkill"
                            "bin/python3"
                            "bin/sh"
                            "bin/which"
                            "bin/wl-paste"
                            "bin/wlsunset"
                            "bin/wtype"))))
                (chmod script #o555))))
          (add-after 'make-wrapper 'qt-wrap
            (lambda args
              (apply wrap-all-qt-programs
                     #:qtbase #$(this-package-input "qtbase")
                     args))))))
    (inputs
     (list bash-minimal
           bluez
           brightnessctl
           cava
           cliphist
           coreutils-minimal
           ddcutil
           dbus
           elogind
           fastfetch-minimal
           findutils
           fontconfig
           git-minimal
           glibc
           grep
           guile-3.0
           imagemagick
           khal
           network-manager
           nosd-blur
           nosd-helpers
           nosd-theme
           procps
           python-minimal
           qtbase
           qtdeclarative
           qtmultimedia
           qtwayland
           quickshell-nosd-git
           util-linux
           which
           wl-clipboard
           wlsunset
           wtype))
    (home-page "https://github.com/nosDshell/nosd")
    (properties `((upstream-name . "nosd")
                  (release-tag-prefix . "^nosdshell-v")))
    (synopsis "Wayland desktop shell in the DDE 15 visual language")
    (description
     "nosDshell is a desktop shell for Wayland built on the @code{quickshell}
framework, derived from Noctalia v4.  It renders every part of the shell —
taskbar, launcher, control center, notifications, OSD, lock screen — in the
visual language of deepin 15 (DDE 15).  It supports compositors like
@code{niri}, @code{hyprland}, and @code{sway}.")
    (license license:gpl3+)))
