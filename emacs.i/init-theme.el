(setq 
  enabled-themes (quote (solarized-light solarized-dark))
  safe-themes
   (quote
    (
     "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879"
     "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"
     default
     ))
  frame-background-mode 'light
  menu-bar-mode nil
  scroll-bar-mode nil
  show-paren-delay 0
  size-indication-mode t
  tool-bar-mode nil
  column-number-mode t
)
(show-paren-mode 1)

(load-theme 'solarized-light t)

;;(defface octicons-face
;;  '((t (:family "github-octicons" :height 1.1)))
;;  "github octicons face"
;;  :group 'basic-faces)

;;(require 'octicons)

;;(defun iconoct (name &optional color)
;;  (concat (propertize
;;           (octicons name)
;;           'face (cond
;;                  ((equal color "orange") '(:inherit octicons-face :foreground "orange"))
;;                  ((equal color "red")    '(:inherit octicons-face :foreground "red"))
;;                  ((zerop color)          '(:inherit octicons-face))
;;                 ))
;;          (propertize "\u200A" 'face '(:family "Terminus" :height 0.9))))

(provide 'init-theme)
