(defun treemacs-exclusive-show ()
  (interactive)
  (treemacs-display-current-project-exclusively)
  (treemacs-select-window))

(global-set-key [f8] 'treemacs)
(global-set-key [f9] 'treemacs-exclusive-show)
