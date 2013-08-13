;;add $HOME/.emacs.d to load-path
(add-to-list 'load-path user-emacs-directory)

;;define the el-get root directory
(setq el-get-root-dir
      (expand-file-name "el-get"
		        user-emacs-directory))

;;define the default recipes directory
(setq el-get-recipes-path
       (expand-file-name "el-get/recipes"
			el-get-root-dir))

;;define core path of el-get
(setq el-get-core-path
      (expand-file-name "el-get"
			el-get-root-dir))

;;add el-get core path to load-path
(add-to-list 'load-path el-get-core-path)

;;settiing the $HOME/.emacs.d as the el-get user package
(setq el-get-user-package-directory user-emacs-directory)

;;initial el-get package
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;add default el-get recipes path
(add-to-list 'el-get-recipe-path el-get-recipes-path)

(setq my-packages
      (append
       '(el-get auto-complete yasnippet paredit multiple-cursors eclim)))

;;sync packages
(el-get 'sync my-packages)

(require 'init-appearance)
(require 'init-ido)
(require 'init-java-mode)
