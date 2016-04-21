(add-hook 'ruby-mode-hook 'ggtags-mode)

(add-hook 'after-save-hook #'gtags-update-hook)

;; turn on rails projectile when in a rails project
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; setup ruby to use
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

;; add bundler support
(require 'bundler)
