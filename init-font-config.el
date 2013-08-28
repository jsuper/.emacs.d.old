;configure emacs font
;; avaiable font list pair, can work correctly in org-mode
(setq emacs-font-list '((
			 ("Consolas" 11) ;;en font name and size
			 ("Microsoft YaHei" 16)) ;; han font name and size
			(
			 ("DejaVu Sans Mono" 10) 
			 ( "WenQuanYi Micro Hei" 16))))

(defun font-existp (font-name)
  "check the given font-name is installed in curren system"
  (interactive)
  (if (null (x-list-fonts font-name))
      nil t))

(defun emacs-font-configure ()
  "configure the emacs fonts"
  (catch 'loop
    (dolist (font-pair emacs-font-list)
      (let ((en-font-list (car font-pair))
	    (han-font-list (first (cdr font-pair))))
	(let ((en-font-name (car en-font-list))
	      (en-font-size (first (cdr en-font-list)))
	      (han-font-name (car han-font-list))
	      (han-font-size (first (cdr han-font-list))))
	  (if (and (font-existp en-font-name)
		   (font-existp han-font-name))
	      (progn 
		(set-face-attribute 'default nil :font (format "%s %d" en-font-name en-font-size))
		(dolist (charset '(kana han symbol cjk-misc bopomofo))
		  (set-fontset-font t
				    charset
				    (font-spec :family han-font-name :size han-font-size)))
		(throw 'loop t))))))))

;;start font configuration
(emacs-font-configure)

(provide 'init-font-config)
