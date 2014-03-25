;; ELPA package management system

(require 'package)

(defvar elpa-install-packages-list '(auctex)
  "All packages installed by elpa")

;;setting package source for elpa
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; initialize the elpa plugins
(package-initialize)

;;check all user-defined packages is install or not, if it is not installed, then install it.
(mapcar (lambda (package)
          (let* ((pname (format "%s" package))
                 (psymbol (intern pname)))
            (unless (package-installed-p psymbol)
              (package-install psymbol))
            ;;load init-$(package-name).el
            (when (file-exists-p (expand-file-name user-emacs-directory
                                                   (format "init-%s.el" pname)))
              (require (intern (format "init-%s" pname))))))
        elpa-install-packages-list)


(provide 'init-package)
;end init-package.el
