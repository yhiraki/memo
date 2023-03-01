(require 'org)
(setq org-publish-project-alist
	  '(("Memo"
		 :base-directory "./src"
		 :html-doctype "html5"
		 :publishing-directory "./dist/posts"
		 :publishing-function org-html-publish-to-html
		 :recursive t
		 :section-numbers nil
		 :with-author nil
		 :with-date nil
		 :with-timestamps nil
		 :with-toc t)
		("static"
		 :base-directory "./static"
		 :base-extension "css\\|js"
		 :publishing-directory "./dist/static"
		 :publishing-function org-publish-attachment
		 :recursive t)
		("images"
		 :base-directory "./img"
		 :base-extension "png\\|jpg"
		 :publishing-directory "./dist/img"
		 :publishing-function org-publish-attachment
		 :recursive t)
		))
(setq org-publish-use-timestamps-flag nil)
(setq org-html-postamble t)
(setq org-html-head-include-scripts nil
	  org-html-head-include-default-style nil
	  org-html-head "\
<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />
<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/tokyo-night-dark.min.css\" id=\"hljs-css\">
")
(setq org-html-postamble-format
	  '(("en" "\
<p class=\"date\">Date: %d</p>
<script src=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js\"></script>
<link rel=\"stylesheet\" href=\"../static/css/main.css\" >\
<script src=\"../static/js/main.js\"></script>
")))

(defvar org-babel-default-header-args:mermaid '((:results . "file") (:exports . "results")))
(defvar org-babel-default-header-args:plantuml '((:results . "file") (:exports . "results")))
(defvar org-babel-default-header-args:shell '((:results . "file") (:exports . "results") (:exports . "both")))
(defvar org-babel-default-header-args:sh '((:results . "file") (:exports . "results") (:exports . "both")))

(org-publish-all)
