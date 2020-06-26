;; customizations for elixir mode

;; for full angry fruit salad effect of rainbow identifiers, don't
;; fontify variable definitions (so that variable use matches
;; definition)

(font-lock-remove-keywords 'elixir-mode
                           '(("\\([A-Z_a-z][0-9A-Z_a-z]*[!?]?\\)[[:space:]]*=\\{1\\}\\(?:~[BCDNR-Ubcrsw]\\|[A-Z_a-z][0-9A-Z_a-z]*[!?]?\\|[[:space:]]\\|
+\\)" . (1 font-lock-variable-name-face))))

;; make fill-paragraph obey elixir heredocs and markdown lists
(add-hook 'elixir-mode-hook
          (lambda ()
            (setq-local paragraph-start
                        (concat "\\(?:\\(?:" paragraph-start "\\)\\|.*\"\"\"$\\|[[:blank:]]*\\(?:[-+*]\\|[[:digit:]][.)]\\) \\{1,4\\}.*\\)"))))
(add-hook 'elixir-mode-hook
          (lambda ()
            (setq-local paragraph-separate
                        (concat "\\(?:\\(?:" paragraph-separate "\\)\\|.*\"\"\"$\\)"))))
