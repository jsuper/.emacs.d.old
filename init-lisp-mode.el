;;configuration for emacs lisp mode

(defun lisp-mode-settings ()
  ;;lisp mode hook
  (local-set-key (kbd "C-c g") 'find-function))

(add-hook 'emacs-lisp-mode-hook 'lisp-mode-settings)

(provide 'init-lisp-mode)
