;; setting emacs appearance
;;custome themes directory
;(setq custom-theme-dir (expand-file-name "themes" user-emacs-directory))
;
;(setq solarized-themes-dir  (expand-file-name "solarized" custom-theme-dir))
;(add-to-list 'load-path solarized-themes-dir)
;(add-to-list 'custom-theme-load-path solarized-themes-dir)
(load-theme 'solarized-dark t nil)

(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows 80)

;;highlight current line
;(global-hl-line-mode 1)

;;set default tab with
(setq tab-width 4)
(scroll-lock-mode t)

;;set user information 
(setq user-mail-address "ling.java@gmail.com")
(setq user-full-name "tony")

;;enable auto-fill-mode
(auto-fill-mode)
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

;;----------------------------------------------------
;; Set default coding environment
;;----------------------------------------------------
(setq-default
 current-language-environment "UTF-8"
 default-input-method "chinese-py"
 locale-coding-system 'utf-8
 default-terminal-coding-system 'utf-8
 default-file-name-coding-system 'utf-8
 default-keyboard-coding-system 'utf-8
 default-buffer-file-coding-system 'utf-8
 default-sendmail-coding-system 'utf-8)

;;; setting locale and coding
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq echo-keystrokes 0.1)
(customize-set-variable 'scroll-bar-mode nil)
(setq x-select-enable-clipboard t)
(fset 'yes-or-no-p 'y-or-n-p)
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)
(setq print-escape-newlines t)

;;; diable the C-SPACE key-binding
(global-set-key (kbd "C-SPC") nil)

;;; set default tab-width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(add-to-list 'tab-stop-list 4)

(setq default-frame-alist '((width . 85) (height . 33)))

(provide 'init-appearance)
