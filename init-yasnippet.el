;; configure for yasnippet
(require 'yasnippet)

(defvar my-snippt-dir 
  (expand-file-name "snippets" user-emacs-directory)
  "Define my snippet stored directory")

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

(defun yas/insert-file-header () 
  "Insert header information about new files, if current mode has defined header snippert."
  (interactive)
  (when (and (buffer-file-name)
             (not (file-exists-p (buffer-file-name)))
             (= (point-max) 1))
    ;;when the file is newly created. It will insert the header snippet.
    (let ((header-snippet (format "%s-header" major-mode))
          (yas/fallback-behavior 'return-nil))
      (insert header-snippet)
      (unless (yas-expand)
        (delete-region (point-min) (point-max))))))

(defun yas/make-snippet (&optional no-template)
  "Create new snippet for current major mode"
  (interactive)
  (let* ((guess-directory (expand-file-name (format "%s/" major-mode)
                                            my-snippt-dir))
         (file-path (read-file-name "Snippet filename: " guess-directory))
         (parent-dir (file-name-directory file-path))
         (file-name (file-name-nondirectory file-path)))
    (unless (and (file-exists-p parent-dir)
                 (file-directory-p parent-dir))
      (make-directory parent-dir t))
    (switch-to-buffer (find-file-noselect file-path))
    (erase-buffer)
    (kill-all-local-variables)
    (snippet-mode)
    (yas-minor-mode 1)
    (unless no-template (yas-expand-snippet "\
# -*- mode: snippet -*-
# name: $1
# key: ${2:${1:$(replace-regexp-in-string \"\\\\\\\\(\\\\\\\\w+\\\\\\\\).*\" \"\\\\\\\\1\" yas-text)}}
# --
$0"))))

;;binding hooks
(add-hook 'find-file-hook 'yas/insert-file-header)

(setq yas/snippet-dirs (list my-snippt-dir))

(yas/global-mode 1)

(define-key yas/keymap (kbd "<return>") 'yas/exit-all-snippets)

(define-key yas/keymap (kbd "C-e") 'yas/goto-end-of-active-field)
(define-key yas/keymap (kbd "C-a") 'yas/goto-start-of-active-field)

;; No dropdowns please, yas
(setq yas/prompt-functions '(yas/ido-prompt yas/completing-prompt))

;; No need to be so verbose
(setq yas/verbosity 1)

;; Wrap around region
(setq yas/wrap-around-region t)

(provide 'init-yasnippet)
