
;configuration for org-mode
(require 'org-publish-setting)
(global-font-lock-mode t)

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))
        ))

(provide 'init-org-mode)
