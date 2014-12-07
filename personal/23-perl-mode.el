(defalias 'perl-mode 'cperl-mode) (add-hook 'cperl-mode-hook 'ggtags-mode)

(add-hook 'after-save-hook #'gtags-update-hook)
