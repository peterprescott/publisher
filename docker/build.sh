mkdir latex
cp ../latex/cls/* latex/
docker build -t dockerized-pandoc .
rm -rf latex
