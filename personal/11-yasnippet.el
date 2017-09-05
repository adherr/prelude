(require 'yasnippet)

(yas-global-mode 1)

(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacs.d/personal/snippets")))

(add-to-list 'hippie-expand-try-functions-list 'yas-hippie-try-expand)
