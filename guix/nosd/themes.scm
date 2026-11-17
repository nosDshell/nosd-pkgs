;;; SPDX-FileCopyrightText: 2026 BrokenShine <xchai404@gmail.com>
;;; SPDX-License-Identifier: GPL-3.0-or-later
;;;
;;; Theme components of the nosd monorepo.  Migrated from the jeans
;;; channel's nosd-app-themes package (modules/jeans/packages/theme.scm),
;;; split into per-component packages: each pins its own
;;; <component>-v<version> tag commit so they can be bumped independently,
;;; matching the monorepo's independent-release model (docs/adr/0001).
;;;
;;; Every %<component>-version / -commit / -hash triple must be the newest
;;; release tag of that component; tools/check-pins.py enforces it.

(define-module (nosd themes)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system trivial)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages qt))

(define (nosd-source component version commit hash)
  "git-fetch the nosd monorepo at COMMIT, named after COMPONENT."
  (origin
    (method git-fetch)
    (uri (git-reference
          (url "https://github.com/nosDshell/nosd")
          ;; 钉 tag 的提交，tag 一致性由 tools/check-pins.py 校验。
          (commit commit)))
    (file-name (git-file-name component version))
    (sha256 (base32 hash))))

;;; 每个组件一组 pin：version 即 tag 的版本，commit 是 tag 指向的提交。
;;; hash 重算：git worktree add <tmp> <component>-v<version> &&
;;;            guix hash -S nar -x <tmp>
(define %nosd-gtk-theme-version "0.3.1")
(define %nosd-gtk-theme-commit "6358454001a654c0e79b46d3e609f3f5c4659d87")
(define %nosd-gtk-theme-hash
  "0msbcm6v00c2vyrn1bqcwysgm6g711746xjcljd8726gwy3chvcm")

(define %nosd-kvantum-theme-version "0.4.0")
(define %nosd-kvantum-theme-commit
  "0f3cf1a9d754c6312ed4c563c767d4ccdce84f0b")
(define %nosd-kvantum-theme-hash
  "0k9n5rn1bczcyjl8d4imljzp8d3l67pq2hl2z88fvdnlyam82x3j")

(define %fcitx5-theme-nosd-version "1.2.0")
(define %fcitx5-theme-nosd-commit
  "1835d8a0546e2f38834dbd0ccc3818d78833ba5e")
(define %fcitx5-theme-nosd-hash
  "0774rmzccx31zm5n859c8baiiklyih6qd2qg3ns7syipx999n8zp")

(define-public nosd-gtk-theme
  (package
    (name "nosd-gtk-theme")
    (version %nosd-gtk-theme-version)
    (source (nosd-source name version
                         %nosd-gtk-theme-commit %nosd-gtk-theme-hash))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("packages/nosd-gtk-theme/nosd" "share/themes/nosd")
          ("packages/nosd-gtk-theme/nosd-dark" "share/themes/nosd-dark")
          ("packages/nosd-gtk-theme/README.md" "share/doc/nosd-gtk-theme/")
          ("packages/nosd-gtk-theme/README.zh_CN.md" "share/doc/nosd-gtk-theme/")
          ("packages/nosd-gtk-theme/CHANGELOG.md" "share/doc/nosd-gtk-theme/")
          ("packages/nosd-gtk-theme/LICENSE" "share/doc/nosd-gtk-theme/"))))
    ;; gtk-engines supplies the GTK 2 murrine engine the themes draw with.
    (inputs (list gtk-engines))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "DDE 15-style GTK themes for the nosDshell desktop")
    (description
     "The nosd and nosd-dark GTK 2/3/4 themes (including Cinnamon,
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
    (version %nosd-kvantum-theme-version)
    (source (nosd-source name version
                         %nosd-kvantum-theme-commit
                         %nosd-kvantum-theme-hash))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("packages/nosd-kvantum-theme/KvLibadwaita" "share/Kvantum/KvLibadwaita")
          ("packages/nosd-kvantum-theme/CHANGELOG.md" "share/doc/nosd-kvantum-theme/"))))
    ;; kvantum provides the Qt-side style plugin consuming the theme.
    (inputs (list kvantum))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "nosd Kvantum theme for Qt applications")
    (description
     "The KvLibadwaita Kvantum widget theme shipped for nosDshell, with the
upstream light theme and its Dark variant in the same directory (the layout
Kvantum uses to pick a variant by QStyle key).  Installs as
@file{share/Kvantum/KvLibadwaita}; nosDshell renders its own
wallpaper-derived colours into the user copy at runtime.")
    (properties `((upstream-name . "nosd")
                  (release-tag-prefix . "^nosd-kvantum-theme-v")))
    (license license:gpl3+)))

(define-public fcitx5-theme-nosd
  (package
    (name "fcitx5-theme-nosd")
    (version %fcitx5-theme-nosd-version)
    (source (nosd-source name version
                         %fcitx5-theme-nosd-commit
                         %fcitx5-theme-nosd-hash))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("packages/fcitx5-theme-nosd/nosd" "share/fcitx5/themes/nosd")
          ("packages/fcitx5-theme-nosd/nosd-dark" "share/fcitx5/themes/nosd-dark")
          ("packages/fcitx5-theme-nosd/README.md" "share/doc/fcitx5-theme-nosd/")
          ("packages/fcitx5-theme-nosd/CHANGELOG.md" "share/doc/fcitx5-theme-nosd/"))))
    (home-page "https://github.com/nosDshell/nosd")
    (synopsis "deepin-style fcitx5 input method skins")
    (description
     "The nosd and nosd-dark fcitx5 skins for the nosDshell desktop,
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
