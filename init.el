(add-to-list 'load-path user-emacs-directory)

(setq el-get-root-dir
      (expand-file-name "el-get"
		        user-emacs-directory))

(setq el-get-recipes-path
      (expand-file-name "recipes"
			el-get-root-dir))

(add-to-list 'load-path el-get-root-dir)

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path el-get-recipes-path)
(el-get 'sync)

(require 'init-appearance)
(require 'init-auto-complete)
