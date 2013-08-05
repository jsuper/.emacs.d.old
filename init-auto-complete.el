;initial and setting auto-complete
(unless (require 'auto-complete nil 'noerror)
  (el-get-install "auto-complete"))

(setq auto-complete-dict-dir
      (expand-file-name "auto-complete/dict"
			el-get-root-dir))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     auto-complete-dict-dir)
(setq ac-auto-show-menu 0.5)
(ac-config-default)

(provide 'init-auto-complete)
