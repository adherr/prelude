;; My packages
(setq prelude-packages (append '(
                                 feature-mode
                                 ag
                                 ggtags
                                 p4
                                 projectile-rails
                                 scad-mode
                                 rainbow-identifiers
                                 rubocop
                                 rvm
                                 bundler
                                 rspec-mode
                                 aggressive-indent
                                 yasnippet
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
