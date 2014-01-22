;; Configure Javascript Develop Environment
;; Need to download slime-js.el, place it to slime/contrib 
;; https://raw2.github.com/swank-js/swank-js/master/slime-js.el
(require 'slime)
(require 'js2-mode)

;;auto active js2-mode when writing js files.
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(defun check-and-install-slime-js-dot-el ()
  "Check whether install the slime-js.el or not. If not, download and install"
  )
(defun js2-mode-settings ()
  (setq mode-name "JS2MODE")
  (check-and-install-slime-js-dot-el)
  (slime-js-minor-mode))

(add-hook 'js2-mode-hook 'js2-mode-settings)

(provide 'init-js2-mode)
;;js2-mode settings end here
