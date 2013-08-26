;; setting emacs appearance
;;custome themes directory
(setq custom-theme-dir 
      (expand-file-name "themes"
			user-emacs-directory))
(setq solarized-themes-dir 
      (expand-file-name "solarized"
			custom-theme-dir))
(add-to-list 'load-path solarized-themes-dir)
(add-to-list 'custom-theme-load-path solarized-themes-dir)
(load-theme 'solarized-dark t nil)

(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;;highlight current line
;(global-hl-line-mode 1)

;;set user information 
(setq user-mail-address "ling.java@gmail.com")
(setq user-full-name "tony")

;;enable column number
(setq column-number-mode t)

;;; enable line number
(linum-mode t)
(global-linum-mode t)

;;; setting global frame title format
(setq frame-title-format "Tony@%b")

;; diable startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message ";;This is the scratch buffer")

;; hidden the toolbar and menubar
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-font-lock-mode t)
(show-paren-mode t)

;;; enable default parenthess
(setq show-paren-style 'parenthess)
(setq make-backup-files nil)

;;; setting locale and coding
(setq current-language-environment "UTF-8")
(setq default-input-method "chinese-py")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq echo-keystrokes 0.1)
(customize-set-variable 'scroll-bar-mode nil)
(setq x-select-enable-clipboard t)
(fset 'yes-or-no-p 'y-or-n-p)
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)
(setq print-escape-newlines t)

;;; ### Coding ###
;;; ---编码设置
;;(setq default-buffer-file-coding-system 'utf-8-unix)            ;缓存文件编码
;;(setq default-file-name-coding-system 'utf-8-unix)              ;文件名编码
;;(setq default-keyboard-coding-system 'utf-8-unix)               ;键盘输入编码
;;(setq default-process-coding-system '(utf-8-unix . utf-8-unix)) ;进程输入输出编码
;;(setq default-sendmail-coding-system 'utf-8-unix)               ;发送邮件编码
;;(setq default-terminal-coding-system 'utf-8-unix)               ;终端编码

(global-set-key (kbd "C-SPC") nil)

(provide 'init-appearance)
