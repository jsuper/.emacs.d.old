
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
  
  ;;enable Auto indent mode when enter org-mode
  (org-indent-mode t))

(add-hook 'org-mode-hook 'org-mode-hook-setting)

(provide 'init-org-mode)
