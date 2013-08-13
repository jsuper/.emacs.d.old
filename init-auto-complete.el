;initial and setting auto-complete
(require 'auto-complete-config)

(setq auto-complete-dict-dir
      (expand-file-name "auto-complete/dict"
			el-get-root-dir))

(add-to-list 'ac-dictionary-directories
	     auto-complete-dict-dir)

(set-default 'ac-sources
             '(ac-source-abbrev
               ac-source-dictionary
               ac-source-yasnippet
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-semantic))

(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;(add-hook 'css-mode-hook 'ac-css-mode-setup)
(setq ac-auto-show-menu 0.5)
(global-auto-complete-mode t)

(provide 'init-auto-complete)
