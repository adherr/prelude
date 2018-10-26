;; make the scrolling not suck
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;;(setq scroll-step 1) ;; keyboard scroll one line at a time -- see http://www.emacswiki.org/emacs/SmoothScrolling
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

;; default to a pretty font
;;; This is now set in .Xdefaults, see http://batsov.com/articles/2011/06/05/emacs-default-font/

;; turn on line numbers on the side of the window
(global-display-line-numbers-mode 1)

;; save my desktop configuration so when my computer dies I can start from where I left off
(desktop-save-mode 1)

;; Don't use messages that you don't read
(setq initial-scratch-message "")

;; not sure if this is done elsewhere in prelude, so do it here to be sure
(prefer-coding-system 'utf-8)

;; Not all servers have zsh, but should have bash
(setenv "SHELL" "/bin/bash")
(setq-default explicit-shell-file-name "/bin/bash")
(setq-default shell-file-name "/bin/bash")

;; make C-x k end client buffers, if there are any
(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (when server-buffer-clients
              (local-set-key (kbd "C-x k") 'server-edit))))

;; Prelude's default save on click is really annoying
;(remove-hook 'mouse-leave-buffer-hook 'prelude-auto-save-command)

;; avy goto line
(global-set-key (kbd "M-g g") 'avy-goto-line)
;; ace-window use home row
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; use ace-window even when there are only two windows
(setq aw-dispatch-always t)
;; but leave other-window key binding alone
(global-set-key [remap other-window] 'other-window)

;; smart-mode-line (copied from
;; 54110fa4345c634be0304d08814caa9bd9a1e7f1 in prelude, where it was
;; removed)
(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
;; delegate theming to the currently active theme
(setq sml/theme nil)
(add-hook 'after-init-hook #'sml/setup)

;; autosave now uses super-save
(setq new-save-actions '(avy-goto-line
                         avy-goto-word-or-subword-1
                         counsel-projectile-find-file
                         counsel-projectile-ag
                         counsel-projectile-rg))
(dolist (action new-save-actions)
  (add-to-list 'super-save-triggers action))

(provide '01-local-settings)
;;; 01-local-settings ends here
