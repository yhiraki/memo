(require 'org)
(setq org-publish-project-alist
	  '(("Memo"
		 :base-directory "./src"
		 :publishing-directory "./dist"
		 :publishing-function org-html-publish-to-html
		 :recursive t
		 :with-author nil
		 )))
(org-publish-project "Memo")
