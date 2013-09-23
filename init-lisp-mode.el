;;configuration for emacs lisp mode

(defun lisp-mode-settings ()
  ;;lisp mode hook
  (setq mode-name "ELISP")
  (local-set-key (kbd "C-c g") 'find-function))

(defun lisp-interaction-mode-setting ()
  (setq mode-name "LISPI"))

(add-hook 'emacs-lisp-mode-hook 'lisp-mode-settings)
(add-hook 'lisp-interaction-mode-hook 'lisp-interaction-mode-setting)

(provide 'init-lisp-mode)
