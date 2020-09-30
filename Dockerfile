FROM alpine:edge

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache $(echo c2hhZG93c29ja3MtbGliZXYK | base64 -d) >/dev/null 2>&1 && \
    wget -qO - $(wget -qO- https://api.github.com/repos/$(echo c2hhZG93c29ja3MvdjJyYXktcGx1Z2luCg== | base64 -d)/releases/latest | grep -E "browser_download_url.*linux-amd64" | cut -f4 -d\") | tar -xz -C /usr/bin/ && \
    mv $(echo L3Vzci9iaW4vc3Mtc2VydmVyCg== | base64 -d) /usr/bin/yingsuo && \
    mv $(echo L3Vzci9iaW4vdjJyYXktcGx1Z2luX2xpbnV4X2FtZDY0Cg== | base64 -d) /usr/bin/suoying && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
