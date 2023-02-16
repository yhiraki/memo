(require 'org)
(add-to-list 'load-path "./site_lisp")
(require 'htmlize)
(setq org-publish-project-alist
	  '(("Memo"
		 :base-directory "./src"
		 :html-doctype "html5"
		 :htmlized-source t
		 :publishing-directory "./dist"
		 :publishing-function org-html-publish-to-html
		 :recursive t
		 :section-numbers nil
		 :with-author nil
		 :with-date nil
		 :with-timestamps nil
		 :with-toc nil
		 )))
(org-publish-project "Memo")
