;; Tony customed el-get packages source definition

(setq el-get-sources
      '(
        (:name org-jekyll-mode
               :type github
               :pkgname "jsuper/org-jekyll-mode"
               :branch "master"
               :description "Publish org-mode files to jekyll blog post"
               :load-path ("."))
        (:name web-mode
               :type github
               :pkgname "fxbois/web-mode"
               :description "Emacs major mode for editing html templates"
               :load-path ".")
        (:name solarized-emacs
               :type github
               :pkgname "bbatsov/solarized-emacs"
               :description "Solarized themes for Emacs"
               :prepare (add-to-list 'custom-theme-load-path default-directory))
        (:name tangotango-theme
               :type github
               :pkgname "juba/color-theme-tangotango"
               :description "Tangotango emacs theme"
               :prepare (add-to-list 'custom-theme-load-path default-directory))
        (:name emacs-powerline
               :type github
               :pkgname "jonathanchu/emacs-powerline"
               :branch "master"
               :description "Emacs powerline mode")
        (:name enhanced-editor
               :type github
               :pkgname "jsuper/enhanced-editor"
               :branch "master"
               :description "Enhanced emacs editor for programmer"
               :load-path (".")
               :autoloads "enhanced-editor-setup")))

;;All my installed packages
(setq base-packages
      '(el-get emacs-powerline tangotango-theme paredit multiple-cursors expand-region))

(setq advanced-packages 
      '(auto-complete yasnippet enhanced-editor zencoding-mode js2-mode web-mode jedi 
                      go-mode go-autocomplete org-jekyll-mode org-mode))

(let* ((extra-pkg (when (getenv "PROGRAMMER")
                    advanced-packages)))
  (setq my-packages (append base-packages extra-pkg)))

(provide 'init-elget-packages)
