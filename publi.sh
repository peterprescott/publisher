docker run -it --rm \
	--volume ${PWD}:/data \
	--user `id -u`:`id -g` \
	--entrypoint "/data/pandoc/script.sh" \
	dockerized-pandoc

