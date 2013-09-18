;; configuration for web front development
(require 'zencoding-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(defun my-web-dev-settings ()
  (zencoding-mode t)
  (local-unset-key "TAB")
  (local-set-key (kbd "C-c e") 'zencoding-expand-line)
  (local-set-key (kbd "C-x e") 'yas-expand))

(add-hook 'web-mode-hook 'my-web-dev-settings)

(provide 'init-web-dev)
