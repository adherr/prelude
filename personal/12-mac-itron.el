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

  (server-start)
  )
