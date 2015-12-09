(setq
 auth-source-do-cache nil
 custom-file "~/.emacs.i/init-custom.el"
 load-prefer-newer t
 password-cache nil
 tab-width 2
 vc-follow-symlinks nil
; too-hardcore-backspace t
; too-hardcore-return t
 )

(setq-default
 indent-tabs-mode nil
 )

(ffap-bindings)
;(require 'hardcore-mode)
;(global-hardcore-mode)

(require 'auto-compile)
(auto-compile-on-load-mode 1)
(auto-compile-on-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-do-cache nil)
 '(auth-source-save-behavior t)
 '(auth-sources (quote ("~/.password-store/emacs.gpg")))
 '(custom-file "~/.emacs.i/init-custom.el")
 '(electric-pair-mode t)
 '(explicit-shell-file-name nil)
 '(jabber-backlog-number 30)
 '(jabber-default-priority 0)
 '(package-selected-packages
   (quote
    (password-store auto-compile solarized-theme nixos-options nix-mode multiple-cursors jabber)))
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(send-mail-function (quote smtpmail-send-it))
 '(speedbar-default-position (quote left))
 '(speedbar-hide-button-brackets-flag t)
 '(speedbar-show-unknown-files t)
 '(speedbar-smart-directory-expand-flag t)
 '(speedbar-use-images nil)
 '(sr-speedbar-default-width 20)
 '(sr-speedbar-right-side nil)
 '(term-scroll-show-maximum-output nil)
 '(term-scroll-to-bottom-on-output t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-custom)
