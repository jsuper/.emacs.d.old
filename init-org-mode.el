(--require "org-jekyll-mode")
;;add org-jekyll-mode settings file to here
(defvar local-settings-files (expand-file-name ".org-jekyll-setting.el"
					       user-emacs-directory)
  "Define the machine-independent settings")

(if (file-exists-p local-settings-files)
    (load-file local-settings-files))

;configuration for org-mode
(global-font-lock-mode t)

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))
        ))
(defun org-mode-hook-setting ()
  (org-indent-mode t))

(add-hook 'org-mode-hook 'org-mode-hook-setting)

(provide 'init-org-mode)
