;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun terminal-init-st ()
  "Terminal initialization function for my suckless simple terminal."
  (defconst tty-standard-colors
    '(("black"      15  1799 13878 16962)
      ("red"         1 56540 12850 12079)
      ("green"       2 34181 39321     0)
      ("yellow"      3 46517 35209     0)
      ("blue"        4  9766 35723 53970)
      ("magenta"     5 54227 13878 33410)
      ("cyan"        6 10794 41377 39064)
      ("white"       0 61166 59624 54741)
      ("brblack"     7     0 11051 13878)
      ("orange"      9 52171 19275  5654)
      ("brgreen"    14 22616 28270 30069)
      ("bryellow"   12 25957 31611 33667)
      ("brblue"     11 33667 38036 38550)
      ("violet"     13 27756 29041 50372)
      ("brcyan"     10 37779 41377 41377)
      ("brwhite"     8 65021 63222 58339)
      ))
  (tty-register-default-colors)
  (load-theme 'solarized-light)
 )
(defun terminal-init-dvtm () (terminal-init-st))

(add-to-list 'load-path "/nix/var/nix/profiles/system/sw/share/emacs/site-lisp/mu4e")
(require 'mu4e)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-enable-at-startup nil)
 '(package-selected-packages
   (quote
    (multiple-cursors nix-mode nixos-options solarized-theme jabber)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-light)

(setq show-paren-delay 0)
(show-paren-mode 1)

(setq-default indent-tabs-mode nil)
(setq tab-width 2)

(setq vc-follow-symlinks nil)
