;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; configuration for auctex
;; ----------------------------------------
;; To use auctex, you must add latex support in your PC.
;; For *nix PCes, you can install texlive and texlive-xelatex
;; for windows, you can install miktex.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'tex)
(setq TeX-auto-untabify t     ; remove all tabs before saving
        TeX-show-compilation t  ; display compilation windows
        TeX-auto-save t
        preview-image-type 'pnm
        TeX-parse-self t
        TeX-save-query nil
        TeX-engine 'xetex
        TeX-PDF-mode t)

(defun latex-mode-settings ()
  (interactive)
  (reftex-mode t)
  (TeX-fold-mode t))

(add-hook 'LaTeX-mode-hook 'latex-mode-settings)

(provide 'init-auctex)
