# edge because:
# - `riscv64` only available in there
FROM alpine:edge

ENTRYPOINT ["/usr/sbin/ethtool"]

WORKDIR /workspace

RUN apk add --no-cache ethtool

# run as unprivileged user
USER 1000:1000
