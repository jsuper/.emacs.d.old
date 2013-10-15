;;configuration for python programming

(add-to-list 'load-path (el-get-package-directory "pymacs"))
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

(setq jedi:setup-keys t)

(--require "jedi")

(defun python-mode-setting ()
  (setq jedi:complete-on-dot t)
  (jedi:setup)
)

(add-hook 'python-mode-hook 'python-mode-setting)

(provide 'init-python)

