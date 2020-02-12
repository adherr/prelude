;; customizations for elixir mode

;; for full angry fruit salad effect of rainbow identifiers, don't
;; fontify variable definitions (so that variable use matches
;; definition)

(font-lock-remove-keywords 'elixir-mode
'(("\\([A-Z_a-z]+[0-9A-Z_a-z]*[!?]?\\)[[:space:]]*=\\{1\\}\\(?:~[BCDNRSTbcrsw]\\|[A-Z_a-z]+[0-9A-Z_a-z]*[!?]?\\|[[:space:]]\\|
+\\)" . (1 font-lock-variable-name-face))))
