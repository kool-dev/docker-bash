FROM alpine:3.12

ENV ASUSER= \
    UID=

RUN adduser -D -u 1337 kool \
    && apk add --no-cache su-exec bash

COPY entrypoint /entrypoint

ENTRYPOINT [ "/entrypoint" ]
