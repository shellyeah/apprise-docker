FROM alpine:latest 

ENV LANG=en_US.UTF-8 \
    TZ=UTC

RUN apk add --no-cache \
#        bash \
#        tzdata \
#        tini \
        apprise

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
WORKDIR /src
ENTRYPOINT [ "sh", "/usr/bin/entrypoint.sh" ]
