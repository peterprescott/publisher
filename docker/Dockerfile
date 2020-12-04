FROM pandoc/ubuntu-latex:2.11.2

RUN apt-get update
RUN apt-get install texlive-xetex -y
RUN tlmgr update --all --self

COPY ./tex_packages.txt \
    /tex_packages.txt
RUN tlmgr install `cat /tex_packages.txt`

COPY ./latex/* \
    /texmf/tex/latex/


