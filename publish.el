(require 'org)
(setq org-publish-project-alist
	  '(("Memo"
		 :base-directory "./src"
		 :html-doctype "html5"
		 :publishing-directory "./dist"
		 :publishing-function org-html-publish-to-html
		 :recursive t
		 :section-numbers nil
		 :with-author nil
		 :with-date nil
		 :with-timestamps nil
		 :with-toc t
		 )))
(setq org-publish-use-timestamps-flag nil)
(setq org-html-postamble t)
(setq org-html-head-include-scripts nil
      org-html-head-include-default-style nil
	  org-html-head "\
<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />
<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/tokyo-night-dark.min.css\">\
")
(setq org-html-postamble-format
	  '(("en" "\
<p class=\"date\">Date: %d</p>
<script src=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js\"></script>
<script>
  document.querySelectorAll('.src').forEach((el) => {
    hljs.highlightElement(el);
  });
</script>\
")))
(org-publish-project "Memo")
