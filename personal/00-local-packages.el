;; My packages
(setq prelude-packages (append '(
                                 ag
                                 aggressive-indent
                                 bundler
                                 feature-mode
                                 ggtags
                                 p4
                                 projectile-rails
                                 rainbow-identifiers
                                 rspec-mode
                                 rubocop
                                 rvm
                                 scad-mode
                                 yasnippet
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
