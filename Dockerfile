FROM debian:testing
MAINTAINER Sebastian Schweizer <sebastian@schweizer.tel>

COPY pgflibrarygraphdrawing.code.tex.patch /

RUN apt-get update -qq -y \
 && apt-get install texlive-full patch -y \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && patch -d /usr/share/texlive/texmf-dist/tex/generic/pgf/graphdrawing/tex < /pgflibrarygraphdrawing.code.tex.patch \
 && rm /pgflibrarygraphdrawing.code.tex.patch
