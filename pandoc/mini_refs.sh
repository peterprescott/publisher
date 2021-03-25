#!/bin/sh

. ./settings.env
. ./$PROJECT/settings.env

echo "Creating .bib file of references from ${REFS}.bib actually cited in ${MARKDOWN}.md..."
cd ./$PROJECT/md

pandoc ./$MARKDOWN.md \
	--to ../../pandoc/bibexport.lua \
	--filter pandoc-crossref \
	--filter pandoc-csv2table \
	--bibliography ../bib/$REFS.bib \
	--citeproc 
