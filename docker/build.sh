mkdir latex
cp ../latex/cls/* latex/
docker build -t pandoc .
rm -rf latex
