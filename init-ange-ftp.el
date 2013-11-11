;; configuration for ange-ftp client 


(defvar ange-ftp-hosts-no-pasv '("localhost")
  "*List of hosts that don't need PASV")

(defun ange-ftp-set-passive ()
  "Function to send a PASV command to hosts not named in the
variable `ange-ftp-hosts-no-pasv'. Intend to be called from 
the hook variable `ange-ftp-process-startup-hoo'."
  (if (not (member host ange-ftp-hosts-no-pasv))
      (ange-ftp-raw-send-cmd proc "passive")))

(add-hook 'ange-ftp-process-startup-hook 'ange-ftp-set-passive)

(provide 'init-ange-ftp)
