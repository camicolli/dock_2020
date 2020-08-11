#Let's use apline instead of ubuntu since it's lighter
FROM alpine

WORKDIR /usr/app

#we need apk instead of ubuntu's apt-get for windows.Adding no cache to reduce image size and delete git afterwards
RUN apk add --no-cache nodejs nodejs-npm git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && npm install && \
    apk del git && \
    addgroup app && \
    adduser -D -G app app && \
    chown -R app:app /usr/app

USER app

CMD serve -s -l $PORT dist
