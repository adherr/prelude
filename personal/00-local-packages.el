;; My packages

;; add org mode repo for org-plus-contrib
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)
(prelude-require-packages '(ag
                            aggressive-indent
                            bundler
                            chruby
                            counsel-projectile
                            feature-mode
                            ggtags
                            groovy-mode
                            neotree
                            ob-elixir
                            ob-http
                            ob-restclient
                            org-plus-contrib
                            p4
                            pivotal-tracker
                            projectile-rails
                            rainbow-identifiers
                            restclient
                            rspec-mode
                            rubocop
                            scad-mode
                            wgrep
                            yasnippet))
