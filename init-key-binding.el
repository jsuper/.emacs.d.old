;;my key bindings
(defun clear-key (keystroke &optional local)
  "Clear the key binding of given keystroke
  KEYSTROKE - The keystroke you want to clear
  LOCAL - If value is given, then clear the local key binding of given KEYSTROKE
"
  (if local
      (local-unset-key (kbd keystroke))
    (global-unset-key (kbd keystroke))))

(defun binding-key (keystroke function &optional local)
  "Assistant function to binding the key"
  (let ((keybd (kbd keystroke)))
    (if local
        (local-set-key keybd function)
      (global-set-key keybd function))))

;; Binding C-z to undo command
(binding-key "C-z" 'undo)

;; change the default key action
(binding-key "C-s" 'isearch-forward-regexp)
(binding-key "C-r" 'isearch-backward-regexp)
(binding-key "C-M-s" 'isearch-forward)
(binding-key "C-M-r" 'isearch-backward)

;;binding C-x C-b to ido-swith-buffer
(binding-key "C-x C-b" 'ido-switch-buffer)

;; binding M-/ to hippie-expand
(binding-key "M-/" 'hippie-expand)


;;binding C-= to expand region
;; must ensure you have install expand-region
(when (require 'expand-region nil 'noerror)
  (global-set-key (kbd "C-=") 'er/expand-region))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Org-mode key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Binding C-cc to org-mode capture
(binding-key "C-c c" 'org-capture)

(provide 'init-key-binding)
