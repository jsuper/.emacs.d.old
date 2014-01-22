;; SLIME settings 
;; To install slime, you need to install your lisp sytem like sbcl
;; SLBC can be installed like : `sudo apt-get install sbcl` under debian-like system
(require 'slime)

(setq inferior-lisp-program "/usr/bin/sbcl")
(slime-setup)

(provide 'init-slime)
;;slime setting end here
