FROM pandoc/ubuntu-latex:2.11.2

RUN apt-get update
RUN apt-get install texlive-xetex -y
RUN tlmgr update --all --self
RUN tlmgr install bibexport

COPY ./tex_packages.txt \
    /tex_packages.txt
RUN tlmgr install `cat /tex_packages.txt`

RUN apt-get update
RUN apt-get install -y haskell-platform --fix-missing
RUN cabal update
RUN cabal install pandoc-csv2table --force-reinstalls
RUN cp /root/.cabal/bin/pandoc-csv2table /bin/pandoc-csv2table

COPY ./latex/* \
    /texmf/tex/latex/

