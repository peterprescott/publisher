#!/bin/sh

. ./settings.env

echo "Making PDF from ${MARKDOWN}.md using ${TEMPLATE} template..."
cd md
pandoc -s ./$MARKDOWN.md \
	-o ../pdf/${MARKDOWN}_${TEMPLATE}.pdf \
	--template ../latex/$TEMPLATE.tex \
	--filter pandoc-crossref \
	--bibliography ../bib/$REFS.bib \
	--citeproc \
	--csl ../pandoc/$STYLE.csl \
	--pdf-engine xelatex
