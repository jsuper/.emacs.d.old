;;configuration for golang programming

(defun golang-setting ()
  (--require "go-autocomplete")
  (require 'go-autocomplete)
  (require 'auto-complete-config))

(add-hook 'go-mode-hook 'golang-setting)
