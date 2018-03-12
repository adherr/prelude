;; switch to counsel-projectile bindings
(counsel-projectile-mode 1)

(defun projectile-use-magit-if-possible (projectile-root)
  "If the project being switched to is a git repository, invoke
magit-status on the project root directory. Use counsel-projectile-switch-project-action otherwise."
  (interactive)
  (if (and (executable-find "git")
           (eq (projectile-project-vcs projectile-root) 'git))
      (magit-status projectile-root)
    (counsel-projectile-switch-project-action projectile-root)))

(counsel-projectile-modify-action
 'counsel-projectile-switch-project-action
 '((add
    ("g" projectile-use-magit-if-possible "open the magit-status buffer")
    1)))
