;;configuration for pareditet]
(require 'paredit)

(defun paredit-wrap-round-from-behind ()
  (interactive)
  (forward-sexp -1)
  (paredit-wrap-round)
  (insert " ")
  (forward-char -1))

(defun paredit-wrap-square-from-behind ()
  (interactive)
  (forward-sexp -1)
  (paredit-wrap-square))

(defun paredit-wrap-curly-from-behind ()
  (interactive)
  (forward-sexp -1)
  (paredit-wrap-curly))

(defun paredit-kill-region-or-backward-word ()
  (interactive)
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (paredit-backward-kill-word)))

(autoload 'enable-paredit-mode "paredit" 
  "Turn on pseudo-structual editing of Lisp code" t)
(rename-minor-mode 'paredit-mode " Par")

(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)


(provide 'init-paredit)
