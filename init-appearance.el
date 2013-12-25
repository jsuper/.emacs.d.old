;; setting emacs appearance
(require 'uniquify)

;; set some variables 
(setq uniquify-buffer-name-style 'forward 
      visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows 80
      user-mail-address "ling.java@gmail.com"
      user-full-name "tony"
      frame-title-format "Tony@%b"
      column-number-mode t
      inhibit-startup-message t
      initial-scratch-message ";;This is the scratch buffer"
      show-paren-style 'parenthess
      make-backup-files nil
      echo-keystrokes 0.1
      x-select-enable-clipboard t
      ring-bell-function 'ignore
      print-escape-newlines t
      default-frame-alist '((width . 85) (height . 33))
      indent-line-function 'insert-tab)

(setq-default current-language-environment "UTF-8"
              default-input-method "chinese-py"
              locale-coding-system 'utf-8
              default-terminal-coding-system 'utf-8
              default-file-name-coding-system 'utf-8
              default-keyboard-coding-system 'utf-8
              default-buffer-file-coding-system 'utf-8
              default-sendmail-coding-system 'utf-8
              ;;----------end coding-----------
              )

(setq  custom-file (expand-file-name "init-custom.el"
                                    user-emacs-directory))
(load-file custom-file)

;;highlight current line
;(global-hl-line-mode 1)

(scroll-lock-mode t)

;;enable auto-fill-mode
(auto-fill-mode)

;;; enable line number
(global-linum-mode t)

;; disable tool bar
(tool-bar-mode -1)

;; disable menubar
(menu-bar-mode -1)

;;enable global font lock mode
(global-font-lock-mode t)

;;enable visualization of matching parens
(show-paren-mode t)

;;; set default tab-width
(setq-default tab-width 4
              indent-tabs-mode nil)
(add-to-list 'tab-stop-list 4)

;;; setting locale and coding
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;set yes-or-no-p to y-or-n-p
(fset 'yes-or-no-p 'y-or-n-p)

;; disable curso blink
(blink-cursor-mode -1)

(load-theme 'solarized-dark t nil)
(my-powerline-center-theme)

(provide 'init-appearance)
