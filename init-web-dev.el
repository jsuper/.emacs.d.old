;; configuration for web front development
(require 'zencoding-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
(defun my-web-dev-settings ()
  (zencoding-mode t)
  (local-unset-key "TAB")
  (local-set-key (kbd "C-c e") 'zencoding-expand-line)
  (local-set-key (kbd "C-x e") 'yas-expand)
  (local-set-key "T" nil))

(add-hook 'web-mode-hook 'my-web-dev-settings)
(provide 'init-web-dev)
