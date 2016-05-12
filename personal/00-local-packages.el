;; My packages
(setq prelude-packages (append '(
                                 feature-mode
                                 scad-mode
                                 ag
                                 ggtags
                                 p4
                                 projectile-rails
                                 rubocop
                                 rvm
                                 bundler
                                 rspec-mode
                                 aggressive-indent
                                 yasnippet
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
