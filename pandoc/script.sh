#!/bin/sh

. ./settings.env

cd md
pandoc -s ./$MARKDOWN.md \
	-o ../pdf/$MARKDOWN.pdf \
	--template ../latex/$TEMPLATE.tex \
	--filter pandoc-crossref \
	--bibliography ../$REFS.bib \
	--citeproc \
	--csl ../pandoc/$STYLE.csl \
	--pdf-engine xelatex


