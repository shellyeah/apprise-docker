FROM alpine:latest 

RUN apk add --no-cache apprise

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "sh", "/usr/bin/entrypoint.sh" ]
