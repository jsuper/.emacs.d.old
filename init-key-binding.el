;;my key bindings

;; disable ctrl-space, I use the keys to swith input method...
(global-set-key (kbd "C-SPC") nil)

;; disable Ctrl-Z to suspend frame
(global-unset-key (kbd "C-z"))

;; and binding C-z to undo command
(global-set-key (kbd "C-z") 'undo)

;;binding C-= to expand region
;; must ensure you have install expand-region
(when (require 'expand-region nil 'noerror)
  (global-set-key (kbd "C-=") 'er/expand-region))

(provide 'init-key-binding)
