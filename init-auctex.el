;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; configuration for auctex
;; ----------------------------------------
;; To use auctex, you must add latex support in your PC.
;; For *nix PCes, you can install texlive and texlive-xelatex
;; for windows, you can install miktex.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defun latex-mode-settings ()
  (interactive)
  (setq TeX-auto-untabify t     ; remove all tabs before saving
        TeX-engine 'xetex       ; use xelatex default
        TeX-show-compilation t  ; display compilation windows
        TeX-auto-save t
        preview-image-type 'pnm
        TeX-parse-self t
        TeX-save-query nil) 
  (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
  (reftex-mode t)
  (TeX-fold-mode t))

(add-hook 'LaTeX-mode-hook 'latex-mode-settings)

(provide 'init-auctex)
