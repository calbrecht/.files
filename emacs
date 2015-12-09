(add-to-list 'load-path "~/.emacs.i/")
(package-initialize)
(require 'init-packages)
(require 'init-terminal)
(require 'init-theme)
(require 'init-funcs)
(require 'init-custom)

;;(global-ede-mode 1)
;;(require 'semantic/sb)

;; Add further minor-modes to be enabled by semantic-mode.
;; See doc-string of `semantic-default-submodes' for other things
;; you can use here.
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)

;; Enable Semantic
;;(semantic-mode 1)

(cond ((> (user-uid) 0)
       (require 'init-jabber)
       (require 'init-mu4e)
      ))
(require 'init-keys)
