
;;configue for ido
(require 'ido)
(ido-mode t)

;;bind C-x C-b to ido-switch-buffer
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(provide 'init-ido)
