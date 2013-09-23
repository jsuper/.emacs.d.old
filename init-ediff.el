(defun command-line-ediff (switch)
  (let* ((first (pop command-line-args-left))
	 (second (pop command-line-args-left)))
    (ediff first second)))

(add-to-list 'command-switch-alist '("-ediff" . command-line-ediff))

(setq ediff-split-window-function (if (> (frame-width) 150)
				      'split-window-horizontally
				    'split-window-vertically))

(provide 'init-ediff)
