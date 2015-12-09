(load-library "url-handlers")
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(defvar my-packages
  '(
    auto-compile
    jabber
    solarized-theme
    multiple-cursors
    nix-mode
    nixos-options
    password-store
    uzumaki ;cycle matched buffers
;    better-defaults
;    calfw
;    cider
;    clojure-mode
;    enh-ruby-mode
;    expand-region
;    hardcore-mode
;    helm-descbinds
;    js2-mode
;    magit
;    sr-speedbar
  ))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;;(add-to-list 'load-path "~/.emacs.d/git/helm")
;;(add-to-list 'load-path "~/.emacs.d/git/emacs-async")
;;(add-to-list 'load-path "~/.emacs.d/git/mu4e/mu4e")
;;(add-to-list 'load-path "~/.emacs.d/git/emacs-octicons")
;;(add-to-list 'load-path "~/.emacs.d/git/tern")

(provide 'init-packages)
