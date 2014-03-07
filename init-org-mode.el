(require 'iimage)
(require 'ox-latex)
(--require "org-jekyll-mode")

;;add org-jekyll-mode settings file to here
(defvar local-settings-files (expand-file-name ".org-jekyll-setting.el"
					       user-emacs-directory)
  "Define the machine-independent settings")

(defvar org-mode-note-capture-file "CaptureNotes.org"
  "Define the org-mode note capture file path")

(defvar org-mode-todo-capture-file "Todo.org"
  "Define the org-mode TODO capture file path")

;; org-mode colors
(setq org-todo-keyword-faces
      '(
        ("INPR" . (:foreground "yellow" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("IMPEDED" . (:foreground "red" :weight bold))))

;;org-mode settings
(defun org-mode-hook-setting ()
  (iimage-mode)
  (org-indent-mode t)
  (turn-on-auto-fill)
  (setq truncate-lines nil))

(when (file-exists-p local-settings-files)
  (load-file local-settings-files))

(add-hook 'org-mode-hook 'org-mode-hook-setting)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-mode-todo-capture-file "Tasks")
         "* TODO %?\n %i\n")
        ("n" "Note" entry (file org-mode-note-capture-file)
         "** %?\n %i\n")))

;;add chinese article class
(add-to-list 'org-latex-classes
             '("cn-article"
               "\\documentclass[11pt]{article}
\\usepackage[slantfont,boldfont]{xeCJK}
[DEFAULT-PACKAGES]
[EXTRA]" 
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")
                ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;;minted settings
;; This requires your commputer install pygments and add %PYTHON_ROOT%/scripts
;; to you PATH
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)

;;set sxelatex as the default pdf process
;;add -shell-escape to allow use minted
(setq org-latex-pdf-process 
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(provide 'init-org-mode)
