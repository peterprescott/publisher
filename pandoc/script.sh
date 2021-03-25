#!/bin/sh

. ./settings.env
. ./$PROJECT/settings.env

echo "Making PDF for ${PROJECT} from ${MARKDOWN}.md using ${TEMPLATE} template..."

# we work from the `md` folder so that relative links to images
# also work when viewing the .md file directly on GitHub 
cd ./$PROJECT/md
pandoc -s ./$MARKDOWN.md \
	-o ../pdf/${MARKDOWN}_${TEMPLATE}.pdf \
	--template ../../latex/$TEMPLATE.tex \
	--filter pandoc-csv2table \
	--filter pandoc-crossref \
	--bibliography ../bib/$REFS.bib \
	--citeproc \
	--csl ../../pandoc/$STYLE.csl \
	--pdf-engine xelatex
