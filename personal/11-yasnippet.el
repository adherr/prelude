(require 'yasnippet)

(yas-global-mode 1)

(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacs.d/personal/snippets")))

(setq  hippie-expand-try-functions-list '(yas-hippie-try-expand
                                          append hippie-expand-try-functions-list))
