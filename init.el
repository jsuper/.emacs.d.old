;;add $HOME/.emacs.d to load-path
(add-to-list 'load-path user-emacs-directory)

;; load all features
(require 'init-common)
(require 'init-ediff)
(require 'init-elget)
(require 'init-font-config)
(require 'init-appearance)
(require 'init-ido)
(require 'init-python)
(require 'init-golang)
(require 'init-web-dev)
(require 'init-lisp-mode)
(require 'init-ange-ftp)

;;load key-binding after all features has been loaded.
(require 'init-key-binding)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; configure emacs to startup as server-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (require 'server nil 'noerror)
  (unless (get-process "server")
      (server-start)))
