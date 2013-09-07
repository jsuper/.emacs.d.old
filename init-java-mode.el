;; configuration for java development
;
;(setq eclim-executable "/home/commons/devtools/eclipse_kepler/eclim")
;(setq eclimd-executable "/home/commons/devtools/eclipse_kepler/eclimd")
;
;(add-hook 'java-mode-hook
;	  (lambda ()
;	    (add-to-list 'load-path (expand-file-name "eclim"
;						      el-get-root-dir))
;	    (require 'eclim)
;	    (require 'ac-emacs-eclim-source)
;	    (debug-on-entry 'eclim--parse-result)   ;debug for eclim--parse-result
;	    (add-hook 'java-mode-hook 'ac-emacs-eclim-java-setup)
;	    (eclim-mode 1)))

(provide 'init-java-mode)










