docker run --rm \
	--volume ${PWD}:/data \
	--user `id -u`:`id -g` \
	--entrypoint "/data/pandoc/script.sh" \
	pandoc

