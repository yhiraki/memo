EMACS ?= emacs

build: site_lisp/htmlize.el
# emacs --batch is the one that inhibits the colorization of the code snippets.
# so use -nw
	$(EMACS) -Q -nw -l publish.el -f kill-emacs

site_lisp:
	mkdir site_lisp

site_lisp/htmlize.el: site_lisp
	curl https://raw.githubusercontent.com/hniksic/emacs-htmlize/master/htmlize.el -o site_lisp/htmlize.el
