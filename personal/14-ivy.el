;; crux binding I don't use conflicts with ivy
(define-key prelude-mode-map (kbd "M-o") nil)
;; ivy binding I don't use conflicts with avy
(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
;; counsel-tramp on C-x t
(global-set-key (kbd "C-x t") 'counsel-tramp)
(global-set-key (kbd "M-y") 'counsel-yank-pop)

;; use ivy for magit
(setq magit-completing-read-function 'ivy-completing-read)

;; wrap results from bottom to top
(setq ivy-wrap 't)

;; save all files in a wgrep (from counsel-projectile-rg, C-c C-o, C-x C-q)
(setq wgrep-auto-save-buffer t)
