
;;configue for ido
(require 'ido)
(ido-mode t)

(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-case-fold nil
      ido-auto-merge-work-directories-length -1
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10)

(setq ido-use-faces nil)

;;bind C-x C-b to ido-switch-buffer
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(provide 'init-ido)
