docker run --rm \
	--volume ${PWD}:/data \
	--user `id -u`:`id -g` \
	--entrypoint "/data/pandoc/script.sh" \
	dockerized-pandoc

. ./settings.env
. ./$PROJECT/settings.env

if [ $MINIMIZE_REFS = true ] ; then

	# generate minimized .bib file
	docker run --rm \
		--volume ${PWD}:/data \
		--user `id -u`:`id -g` \
		--entrypoint "/data/pandoc/mini_refs.sh" \
		dockerized-pandoc

	# clean up
	cd ./$PROJECT/md/
	rm bibexport.aux
	mv bibexport.bib ../bib/${REFS}_used_in_${MARKDOWN}.bib

fi

