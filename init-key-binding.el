;;my key bindings

;; disable Ctrl-Z to suspend frame
;; and binding C-z to undo command
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'undo)

;;binding C-= to expand region
;; must ensure you have install expand-region
(when (require 'expand-region nil 'noerror)
  (global-set-key (kbd "C-=") 'er/expand-region))

(provide 'init-key-binding)
