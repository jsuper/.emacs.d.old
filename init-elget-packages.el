;; Tony customed el-get packages source definition
(defvar ext-mark-file (expand-file-name ".ext" user-emacs-directory)
  "Keep all extensions which user installed")
(setq promopt-message "Do you want to load extras extensions?")

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

;; By default, only install base-packages
(setq my-packages base-packages)

(defun load-extra-extension ()
  (let ((inited-startup (file-exists-p ext-mark-file)))
    (if inited-startup
        ;load extra packages
        (setq my-packages (append base-packages advanced-packages))
      (let ((app-buffer (get-buffer-create "* Load Extensions Pakcages **")))
        (with-current-buffer app-buffer
          (insert "Extra packages will be installed to Emacs: \n")
          (mapcar (lambda (app)
                    (insert  (format "%s\n" app))) advanced-packages)
          (setq buffer-read-only t)
          (switch-to-buffer app-buffer)
          (when (yes-or-no-p promopt-message)
            (write-region (point-min) (point-max) ext-mark-file)
            (setq my-packages (append base-packages advanced-packages)))
          (kill-buffer))))))

;; To load advanced packages by user
(load-extra-extension)

(provide 'init-elget-packages)
