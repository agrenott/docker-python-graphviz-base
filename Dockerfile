FROM python:3.8

# add contrib packages, install graphviz (needed for pygraphviz) and msfonts to get Verdana font
RUN echo "deb http://deb.debian.org/debian stable main contrib" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends graphviz libgraphviz-dev \
    && apt-get install -y --no-install-recommends ttf-mscorefonts-installer \
    && rm -rf /var/lib/apt/lists/*
