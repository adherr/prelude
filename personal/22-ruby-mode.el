(add-hook 'ruby-mode-hook 'ggtags-mode)

;; turn on rails projectile when in a rails project
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; add bundler support
(require 'bundler)

;; add rubocop mode
(add-hook 'ruby-mode-hook #'rubocop-mode)
