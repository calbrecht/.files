;; let emacs blink when something interesting happens.
;; in KDE this marks the active Emacs icon in the tray.
(defun x-urgency-hint (frame arg &optional source)
  "Set the x-urgency hint for the frame to arg: 

- If arg is nil, unset the urgency.
- If arg is any other value, set the urgency.

If you unset the urgency, you still have to visit the frame to make the urgency setting disappear (at least in KDE)."
  (let* ((wm-hints (append (x-window-property 
			    "WM_HINTS" frame "WM_HINTS" source nil t) nil))
	 (flags (car wm-hints)))
    (setcar wm-hints
	    (if arg
		(logior flags #x100)
	      (logand flags (lognot #x100))))
    (x-change-window-property "WM_HINTS" wm-hints frame "WM_HINTS" 32 t)))

(defun x-urgent (&optional arg)
  "Mark the current emacs frame as requiring urgent attention. 

With a prefix argument which does not equal a boolean value of nil, remove the urgency flag (which might or might not change display, depending on the window manager)."
  (interactive "P")
  (let (frame (car (car (cdr (current-frame-configuration)))))
  (x-urgency-hint frame (not arg))))

(defun x-urgent-true ()
  (x-urgent))

(defun x-urgent-false ()
  (x-urgent t))

(defun add-credentials (host user port)
  (let* ((auth-source-creation-prompts
          '((secret . "Password for %u@%h: ")))
         (found (nth 0 (auth-source-search :max 1
                                           :host host
                                           :port port
                                           :user user
                                           :require '(:secret)
                                           :create t))))
    (if found
        (funcall (plist-get found :save-function))
    nil)))

(provide 'init-funcs)
