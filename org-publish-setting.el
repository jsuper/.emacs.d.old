;; configuration for org publish
(require 'htmlize)
(require 'org-install)
(require 'org-publish)

;(setq org-export-with-special-strings nil)
;(setq org-export-with-sub-superscripts nil)
;(setq org-export-with-TeX-macros nil)
(setq base-dir "c:/Users/tangilin/orgs")

(setq org-publish-project-alist
	  '(
	    ("org-notes"
	     :base-directory "c:/Users/tangilin/orgs"
	     :publishing-directory "c:/Users/tangilin/jekyll_demo/demo_blog/_posts"
	     :base-extension "org"
	     :recursive t
	     :publishing-function org-html-publish-to-html
             :auto-sitemap nil
	     :section-numbers nil
	     :html-extension "html"
	     :body-only t
;	     :with-toc nil
	     :auto-preamble nil
	     :auto-postamble nil
	     )
	    ("note-static"
	     :base-directory "c:/Users/tangilin/orgs"
	     :publishing-directory "c:/Users/tangilin/jekyll_demo/demo_blog/assets"
	     :recursive t
	     :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
	     :publishing-function org-publish-attachment)
	    ("note"
	     :components ("org-notes" "note-static")
	     :author "tangling.life@gmail.com"
	     )
	    )
	  )

(provide 'org-publish-setting)
