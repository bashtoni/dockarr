FROM ubuntu-arr-mono
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2009837CBFFD68F45BC180471F4F90DE2A9B4BF8 && \
    echo "deb https://apt.sonarr.tv/ubuntu focal main" >> /etc/apt/sources.list && \
    echo 'sonarr sonarr/owning_user select root' | debconf-set-selections && \
    echo 'sonarr sonarr/owning_group select root' | debconf-set-selections && \
    echo 'sonarr sonarr/config_directory select /config' | debconf-set-selections && \
    apt-get update && \
    apt-get install -y sonarr && \
    rm -rf /var/lib/apt/lists/*
VOLUME ["/config"] 
EXPOSE 8989
CMD ["/usr/bin/mono", "--debug", "/usr/lib/sonarr/bin/Sonarr.exe", "-nobrowser", "-data=/config"]
