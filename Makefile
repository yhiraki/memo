EMACS ?= emacs

build:
# emacs --batch is the one that inhibits the colorization of the code snippets.
# so use -nw
	TERM=xterm-256color $(EMACS) -Q -nw -l publish.el -f kill-emacs
