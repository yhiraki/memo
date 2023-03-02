EMACS ?= emacs

.PHONY: build
build: dist

dist: publish.el $(wildcard src/*.org) $(wildcard src/*/*.org)
# emacs --batch is the one that inhibits the colorization of the code snippets.
# so use -nw
	TERM=xterm-256color $(EMACS) -Q -nw -l publish.el -f kill-emacs

.PHONY: serve
serve: dist
	python3 -m http.server -d $<
