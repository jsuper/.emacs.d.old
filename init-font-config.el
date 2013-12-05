;configure emacs font
;; avaiable font list pair, can work correctly in org-mode
(defvar emacs-font-list '((
			 ("Consolas" 10) ;;en font name and size
			 ("Microsoft YaHei" 14)) ;; han font name and size
			(
			 ("DejaVu Sans Mono" 9) 
			 ("WenQuanYi Micro Hei" 14)))
  "Emacs font list: en font and han font pair")

(defun font-existp (font-name)
  "check the given font-name is installed in curren system"
  (interactive)
  (if (null (condition-case nil
                (x-list-fonts font-name)
              (error nil)))
      nil t))

(defun emacs-font-configure ()
  "configure the emacs fonts"
  (catch 'loop
    (dolist (font-pair emacs-font-list)
      (let* ((en-font-list (car font-pair))
	     (han-font-list (first (cdr font-pair)))
	     (en-font-name (car en-font-list))
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
		(throw 'loop t)))))))

;;start font configuration
(emacs-font-configure)

(provide 'init-font-config)
