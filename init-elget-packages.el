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
        (:name enhanced-editor
               :type github
               :pkgname "jsuper/enhanced-editor"
               :branch "master"
               :description "Enhanced emacs editor for programmer"
               :load-path (".")
               :autoloads "enhanced-editor-setup")))

;;All my installed packages
(setq my-packages
      (append
       '(el-get auto-complete yasnippet paredit 
		multiple-cursors jedi powerline tangotango-theme
		org-jekyll-mode org-mode enhanced-editor
		go-mode go-autocomplete expand-region
		zencoding-mode js2-mode web-mode)))

(provide 'init-elget-packages)
