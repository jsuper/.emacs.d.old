;;configuration for python programming

(setq jedi:setup-keys t)

(--require "jedi")

(defun python-mode-setting ()
  (setq jedi:complete-on-dot t)
  (jedi:setup)
)

(add-hook 'python-mode-hook 'python-mode-setting)

(provide 'init-python)

