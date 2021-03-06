;; mac/Itron specific settings
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete

  (setq prelude-clean-whitespace-on-save nil) ;; don't clean up code here
  (global-aggressive-indent-mode 0) ;; off at Itron so I don't reformat all the things

  ;; all the lines are too long, switch to fill column indicator
  (setq whitespace-style '(face tabs empty trailing))
  ;; (setq fci-rule-width 1)
  ;; (setq fci-rule-color "darkblue")
  ;; (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
  ;; (global-fci-mode 1)

  (setq pivotal-api-token "8b927b7495f94532289684f2a7916e3a")

  (load "server")
  (unless (server-running-p) (server-start))

  (defun insert-workitem-url ()
    "find the text '^# On branch (\d+)' in the current buffer and inserts the correct workitem url at point"
    (interactive)
    (let ((current-position (point)))
      (re-search-forward "^# On branch \\([[:digit:]]+\\)" nil nil 1)
      (let ((story-number (match-string 1)))
        (goto-char current-position)
        (insert "https://dev.azure.com/itron/SoftwareProducts/_workitems/edit/" story-number))))

  (setq confirm-kill-emacs 'y-or-n-p)
  )
