;; customizations for all programming modes

; rainbow delimiters are cool
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

; try out rainbow identifiers too
(add-hook 'prog-mode-hook 'rainbow-identifiers-mode)
