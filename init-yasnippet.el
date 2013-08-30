;; configure for yasnippet
(require 'yasnippet)

(setq yas/snippet-dirs (list (expand-file-name "yasnippet/snippets"
					       el-get-root-dir)
			     (expand-file-name "snippets"
					       user-emacs-directory)))

(yas/global-mode 1)
(define-key yas/keymap (kbd "<return>") 'yas/exit-all-snippets)
;; Inter-field navigation
(defun yas/goto-end-of-active-field ()
  (interactive)
  (let* ((snippet (car (yas/snippets-at-point)))
        (position (yas/field-end (yas/snippet-active-field snippet))))
    (if (= (point) position)
        (move-end-of-line 1)
      (goto-char position))))

(defun yas/goto-start-of-active-field ()
  (interactive)
  (let* ((snippet (car (yas/snippets-at-point)))
        (position (yas/field-start (yas/snippet-active-field snippet))))
    (if (= (point) position)
        (move-beginning-of-line 1)
      (goto-char position))))

(define-key yas/keymap (kbd "C-e") 'yas/goto-end-of-active-field)
(define-key yas/keymap (kbd "C-a") 'yas/goto-start-of-active-field)

;; No dropdowns please, yas
(setq yas/prompt-functions '(yas/ido-prompt yas/completing-prompt))

;; No need to be so verbose
(setq yas/verbosity 1)

;; Wrap around region
(setq yas/wrap-around-region t)

(provide 'init-yasnippet)
