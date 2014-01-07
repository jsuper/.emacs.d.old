(--require "org-jekyll-mode")
;;add org-jekyll-mode settings file to here
(defvar local-settings-files (expand-file-name ".org-jekyll-setting.el"
					       user-emacs-directory)
  "Define the machine-independent settings")

(defvar org-mode-note-capture-file nil
  "Define the org-mode note capture file path")

(defvar org-mode-todo-capture-file nil
  "Define the org-mode TODO capture file path")

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))))

;;org-mode settings
(defun org-mode-hook-setting ()
  (org-indent-mode t)
  (setq truncate-lines nil))

(when (file-exists-p local-settings-files)
  (load-file local-settings-files))

(add-hook 'org-mode-hook 'org-mode-hook-setting)

(provide 'init-org-mode)
