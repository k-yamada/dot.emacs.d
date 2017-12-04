.PHONY: help setup

all: help

help:
	cat Makefile

setup:
	gem install rcodetools
	rbenv rehash
	brew install python
	pip install format-sql
	go get -u golang.org/x/tools/cmd/goimports
	go get -u code.google.com/p/rog-go/exp/cmd/godef
	go get -u github.com/nsf/gocode
	go get -u github.com/dougm/goflymake
	npm install -g gh-markdown-cli
	npm install -g js-beautify
