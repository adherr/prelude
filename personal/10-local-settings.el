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
(require 'linum)
(global-linum-mode 1)

;; save my desktop configuration so when my computer dies I can start from where I left off
(desktop-save-mode 1)

;; Don't use messages that you don't read
(setq initial-scratch-message "")

;; not sure if this is done elsewhere in prelude, so do it here to be sure
(prefer-coding-system 'utf-8)

;; make C-x k end client buffers, if there are any
(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (when server-buffer-clients
              (local-set-key (kbd "C-x k") 'server-edit))))

;; Prelude's default save on click is really annoying
(remove-hook 'mouse-leave-buffer-hook 'prelude-auto-save-command)

;; Avy is cool. Use it more
(global-set-key (kbd "M-g g") 'avy-goto-line)
;; ace-window use home row
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

(provide '10-local-settings)
;;; 10-local-settings ends here
