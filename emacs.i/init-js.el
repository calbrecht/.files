(require 'js2-mode)
(require 'tern)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
