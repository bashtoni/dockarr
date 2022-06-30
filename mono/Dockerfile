FROM ubuntu:20.04
RUN mkdir /config && \
    apt-get update && \
    apt-get install -y wget ca-certificates gnupg && \
    wget https://mediaarea.net/repo/deb/repo-mediaarea_1.0-20_all.deb && \
    dpkg -i repo-mediaarea_1.0-20_all.deb && \
    rm repo-mediaarea_1.0-20_all.deb && \ 
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" > /etc/apt/sources.list.d/mono-official-stable.list && \
    ln -fs /usr/share/zoneifo/Etc/UTC /etc/localtime && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install mono-runtime tzdata && \
    rm -rf /var/lib/apt/lists/*
