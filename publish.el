(require 'org)
(setq org-publish-project-alist
	  '(("Memo"
		 :base-directory "./src"
		 :recursive t
		 :publishing-directory "./dist"
		 :publishing-function org-html-publish-to-html)))
(org-publish-project "Memo")
