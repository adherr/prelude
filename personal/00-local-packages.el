;; My packages
(setq prelude-packages (append '(
                                 feature-mode
                                 scad-mode
                                 ag
                                 ggtags
                                 p4
                                 projectile-rails
                                 rvm
                                 bundler
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
