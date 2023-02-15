EMACS ?= emacs

build: site_lisp/htmlize.el
	$(EMACS) --batch -l publish.el

site_lisp:
	mkdir site_lisp

site_lisp/htmlize.el: site_lisp
	curl https://raw.githubusercontent.com/hniksic/emacs-htmlize/master/htmlize.el -o site_lisp/htmlize.el
