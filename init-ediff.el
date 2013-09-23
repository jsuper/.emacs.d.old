(defun command-line-ediff (switch)
  (let* ((first (pop command-line-args-left))
	 (second (pop command-line-args-left)))
    (ediff first second)))

(add-to-list 'command-switch-alist '("-ediff" . command-line-ediff))

(setq ediff-split-window-function 'split-window-horizontally)

(provide 'init-ediff)
