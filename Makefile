EMACS := emacs

build:
	$(EMACS) --batch -l publish.el
