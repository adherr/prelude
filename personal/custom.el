(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(desktop-base-file-name "desktop")
 '(desktop-base-lock-name "desktop.lock")
 '(desktop-dirname prelude-savefile-dir t)
 '(desktop-path (add-to-list 'desktop-path prelude-savefile-dir))
 '(desktop-save-mode t)
 '(ess-default-style 'RStudio)
 '(ess-indent-with-fancy-comments nil)
 '(ess-style 'RStudio)
 '(forge-alist
   '(("github.com" "api.github.com" "github.com" forge-github-repository)
     ("gitlab.com" "gitlab.com/api/v4" "gitlab.com" forge-gitlab-repository)
     ("salsa.debian.org" "salsa.debian.org/api/v4" "salsa.debian.org" forge-gitlab-repository)
     ("framagit.org" "framagit.org/api/v4" "framagit.org" forge-gitlab-repository)
     ("codeberg.org" "codeberg.org/api/v1" "codeberg.org" forge-gitea-repository)
     ("code.orgmode.org" "code.orgmode.org/api/v1" "code.orgmode.org" forge-gogs-repository)
     ("bitbucket.org" "api.bitbucket.org/2.0" "bitbucket.org" forge-bitbucket-repository)
     ("git.savannah.gnu.org" nil "git.savannah.gnu.org" forge-cgit**-repository)
     ("git.kernel.org" nil "git.kernel.org" forge-cgit-repository)
     ("repo.or.cz" nil "repo.or.cz" forge-repoorcz-repository)
     ("git.suckless.org" nil "git.suckless.org" forge-stagit-repository)
     ("git.sr.ht" nil "git.sr.ht" forge-srht-repository)
     ("github.comverge.com" "github.comverge.com/api/v3" "github.comverge.com" forge-github-repository)))
 '(groovy-indent-offset 2)
 '(js-indent-level 2)
 '(magit-bury-buffer-function 'magit-mode-quit-window)
 '(magit-display-buffer-function 'magit-display-buffer-same-window-except-diff-v1)
 '(magit-save-repository-buffers 'dontask)
 '(magit-section-initial-visibility-alist '((stashes . hide) (unpushed . show)))
 '(neo-theme 'arrow)
 '(neo-window-width 45)
 '(package-selected-packages
   (quote
    (2048-game flycheck-credo frog-jump-buffer frog-menu yasnippet-snippets flycheck-plantuml plantuml-mode poly-org poly-erb poly-R poly-markdown toml-mode git-link csv-mode zop-to-char zenburn-theme yari yaml-mode which-key wgrep web-mode volatile-highlights undo-tree super-save smex smartrep smartparens smart-mode-line scss-mode scad-mode ruby-tools rubocop rspec-mode rainbow-mode rainbow-identifiers rainbow-delimiters racer projectile-rails pivotal-tracker p4 operate-on-number ob-restclient ob-http ob-elixir neotree move-text magit json-mode js2-mode imenu-anywhere hl-todo guru-mode groovy-mode gitignore-mode gitconfig-mode git-timemachine gist ggtags geiser flycheck-rust feature-mode expand-region exec-path-from-shell ess-smart-equals ess-R-data-view elisp-slime-nav editorconfig easy-kill dockerfile-mode docker-tramp discover-my-major diminish diff-hl dash-functional crux counsel-tramp counsel-projectile counsel-gtags company-auctex company-anaconda coffee-mode cider chruby cdlatex cargo bundler browse-kill-ring beacon anzu alchemist aggressive-indent ag ace-window)))
 '(plantuml-indent-level 2)
 '(plantuml-jar-path "/Users/aherr/.emacs.d/plantuml.jar")
 '(sh-basic-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
