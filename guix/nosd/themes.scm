;;; SPDX-FileCopyrightText: 2026 BrokenShine <xchai404@gmail.com>
;;; SPDX-License-Identifier: GPL-3.0-or-later
;;;
;;; Theme components of the nosd monorepo.  Migrated from the jeans
;;; channel's nosd-app-themes package (modules/jeans/packages/theme.scm),
;;; split into per-component packages: each pins its own
;;; <component>-v<version> tag (or interim commit) so they can be bumped
;;; independently, matching the monorepo's independent-release model
;;; (docs/adr/0001).
;;;
;;; Until the first component tags exist all three pin the same
;;; post-monorepo commit; afterwards each *-version/*-commit pair moves
;;; on its own component tag.

(define-module (nosd themes)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system trivial)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages qt))

(define %nosd-commit "1ff7693436b1e25b56727eab77909e8ea06f15d1")

(define (nosd-source component version commit hash)
  "git-fetch the nosd monorepo at COMMIT, named after COMPONENT."
  (origin
    (method git-fetch)
    (uri (git-reference
          (url "https://github.com/nosDshell/nosd")
          ;; tag 就位后改为 (string-append component "-v" version)
          (commit commit)))
    (file-name (git-file-name component version))
    (sha256 (base32 hash))))

;;; 各组件共享同一 commit 树时的 hash（git worktree 实测）；分开 pin
;;; 后逐项重算：git worktree add <tmp> <ref> && guix hash -S nar -x <tmp>
(define %nosd-hash "0d0dxl9rnfic0i48vb3cyj2k6xxyx96cf85s71frxvb8py1pj11s")

(define-public nosd-gtk-theme
  (package
    (name "nosd-gtk-theme")
    (version "0.2.0")
    (source (nosd-source name version %nosd-commit %nosd-hash))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("packages/nosd-gtk-theme/deepin" "share/themes/deepin")
          ("packages/nosd-gtk-theme/deepin-dark" "share/themes/deepin-dark")
          ("packages/nosd-gtk-theme/README.md" "share/doc/nosd-gtk-theme/")
          ("packages/nosd-gtk-theme/README.zh_CN.md" "share/doc/nosd-gtk-theme/")
          ("packages/nosd-gtk-theme/CHANGELOG.md" "share/doc/nosd-gtk-theme/")
          ("packages/nosd-gtk-theme/LICENSE" "share/doc/nosd-gtk-theme/"))))
    ;; gtk-engines supplies the GTK 2 murrine engine the themes draw with.
    (inputs (list gtk-engines))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "DDE 15-style GTK themes for the nosDshell desktop")
    (description
     "The deepin and deepin-dark GTK 2/3/4 themes (including Cinnamon,
GNOME Shell, Metacity, Unity and Xfwm4 skins).  Every colour literal is
routed through @@define-color so nosDshell can inject a wallpaper-derived
palette without editing any theme file.  Shape tokens follow
@file{spec/tokens.toml} in the nosd monorepo.")
    (properties `((upstream-name . "nosd")
                  (release-tag-prefix . "^nosd-gtk-theme-v")))
    (license license:gpl3+)))

(define-public nosd-kvantum-theme
  (package
    (name "nosd-kvantum-theme")
    (version "0.1.0")
    (source (nosd-source name version %nosd-commit %nosd-hash))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("packages/nosd-kvantum-theme/nosd" "share/Kvantum/nosd")
          ("packages/nosd-kvantum-theme/CHANGELOG.md" "share/doc/nosd-kvantum-theme/"))))
    ;; kvantum provides the Qt-side style plugin consuming the theme.
    (inputs (list kvantum))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "nosd Kvantum theme for Qt applications")
    (description
     "The nosd Kvantum widget theme, shipped with its template sources
(@file{*.kvconfig.tpl}, @file{*.svg.tpl}) so nosDshell can render a
wallpaper-derived variant at runtime.  Installs as @file{share/Kvantum/nosd}.")
    (properties `((upstream-name . "nosd")
                  (release-tag-prefix . "^nosd-kvantum-theme-v")))
    (license license:gpl3+)))

(define-public fcitx5-theme-nosd
  (package
    (name "fcitx5-theme-nosd")
    (version "1.1.0")
    (source (nosd-source name version %nosd-commit %nosd-hash))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("packages/fcitx5-theme-nosd/deepin-light" "share/fcitx5/themes/deepin-light")
          ("packages/fcitx5-theme-nosd/deepin-dark" "share/fcitx5/themes/deepin-dark")
          ("packages/fcitx5-theme-nosd/README.md" "share/doc/fcitx5-theme-nosd/")
          ("packages/fcitx5-theme-nosd/CHANGELOG.md" "share/doc/fcitx5-theme-nosd/"))))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "deepin-style fcitx5 input method skins")
    (description
     "deepin-light and deepin-dark fcitx5 skins for the nosDshell desktop,
installed under @file{share/fcitx5/themes/}.")
    (properties `((upstream-name . "nosd")
                  (release-tag-prefix . "^fcitx5-theme-nosd-v")))
    (license license:gpl3+)))

;;; Union of all theme components — the one-stop install matching the old
;;; nosd-app-themes package's coverage (plus the fcitx5 skins).
(define-public nosd-themes
  (package
    (name "nosd-themes")
    (version (package-version nosd-gtk-theme))
    (source #f)
    (build-system trivial-build-system)
    (arguments
     (list
      #:modules '((guix build union))
      #:builder
      #~(begin
          (use-modules (guix build union))
          (union-build #$output
                       (list #$nosd-gtk-theme
                             #$nosd-kvantum-theme
                             #$fcitx5-theme-nosd)))))
    (inputs (list nosd-gtk-theme nosd-kvantum-theme fcitx5-theme-nosd))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "All nosd themes (GTK + Kvantum + fcitx5)")
    (description
     "Union package installing every nosd theme component at once:
nosd-gtk-theme, nosd-kvantum-theme and fcitx5-theme-nosd.")
    (license license:gpl3+)))
