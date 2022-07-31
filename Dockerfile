FROM ubuntu:22.04
WORKDIR /root/

# 必要なパッケージ導入
RUN apt update && apt install -y \
        curl \
        python3 \
        python-is-python3 \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# youtube-dlの導入
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl \
    && chmod a+rx /usr/local/bin/youtube-dl
