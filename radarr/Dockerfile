FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    ln -fs /usr/share/zoneifo/Etc/UTC /etc/localtime && \
    apt-get install -y ca-certificates \
                       gnupg \
                       curl \
                       sqlite3 \
                       tzdata \
                       tar \
                       gzip \
                       libicu66 \
                       libchromaprint-tools \
                       mediainfo
ENV APP_NAME=radarr
ENV BRANCH=master
RUN curl -L -o /tmp/app.tar.gz \
    "https://${APP_NAME}.servarr.com/v1/update/${BRANCH}/updatefile?os=linux&runtime=netcore&arch=x64" && \
    tar zxvf /tmp/app.tar.gz -C /opt && \
    rm /tmp/app.tar.gz && rm -rf /var/lib/apt/lists/*
VOLUME ["/config"] 
EXPOSE 7878
CMD ["/opt/Radarr/Radarr", "-nobrowser", "-data=/config"]
