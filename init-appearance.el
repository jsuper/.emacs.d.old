;; setting emacs appearance
;(add-to-list 'custom-theme-load-path
;	     (expand-file-name "themes"
;			       user-emacs-directory))
(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

(global-hl-line-mode 1)
(setq user-mail-address "ling.java@gmail.com")
(setq user-full-name "tony")
(setq column-number-mode t)
(linum-mode t)
(global-linum-mode t)
(setq frame-title-format "emacs@%b")
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-font-lock-mode t)
(show-paren-mode t)
(setq show-paren-style 'parenthess)
(setq make-backup-files nil)

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
(setq default-buffer-file-coding-system 'utf-8-unix)            ;缓存文件编码
(setq default-file-name-coding-system 'utf-8-unix)              ;文件名编码
(setq default-keyboard-coding-system 'utf-8-unix)               ;键盘输入编码
(setq default-process-coding-system '(utf-8-unix . utf-8-unix)) ;进程输入输出编码
(setq default-sendmail-coding-system 'utf-8-unix)               ;发送邮件编码
(setq default-terminal-coding-system 'utf-8-unix)               ;终端编码

;(load-theme 'default-black)

(provide 'init-appearance)
