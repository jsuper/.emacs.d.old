;Define emacs marco and common functions

(defun rename-minor-mode (mode lighter)
  "Rename the lighter of given MODE"
  (let ((mode-info (cdr (assq mode minor-mode-alist))))
    (when mode-info
      (setcar mode-info lighter))
    ))

(provide 'init-common)
