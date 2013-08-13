;; configuration for java development

(setq eclim-executable "C:/Work/worktools/eclipse_kepler/eclipse/eclim.bat")

(add-hook 'java-mode-hook
	  (lambda ()
	    (require 'eclim)
	    (require 'ac-emacs-eclim-source)
	    (add-hook 'java-mode-hook 'ac-emacs-eclim-java-setup)
	    (eclim-mode 1)))

(provide 'init-java-mode)
