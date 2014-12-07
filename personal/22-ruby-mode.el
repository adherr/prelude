(add-hook 'ruby-mode-hook 'ggtags-mode)

(add-hook 'after-save-hook #'gtags-update-hook)
