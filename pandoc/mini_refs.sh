#!/bin/sh

. ./settings.env

echo "Creating .bib file of references from ${REFS}.bib actually cited in ${MARKDOWN}.md..."
cd md

pandoc ./$MARKDOWN.md \
	--to ../pandoc/bibexport.lua \
	--bibliography ../bib/$REFS.bib \
	--filter pandoc-crossref \
	--citeproc 
