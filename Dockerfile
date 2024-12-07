FROM alpine:latest

ENTRYPOINT ["/usr/sbin/ethtool"]

WORKDIR /workspace

RUN apk add --no-cache ethtool

# run as unprivileged user
USER 1000:1000
