;initial and setting auto-complete
(require 'auto-complete-config)

(setq auto-complete-dict-dir
      (expand-file-name "auto-complete/dict"
			el-get-root-dir))

(add-to-list 'ac-dictionary-directories
	     auto-complete-dict-dir)

(setq ac-auto-show-menu 0.5)
(ac-config-default)

(provide 'init-auto-complete)
