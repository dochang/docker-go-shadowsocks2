FROM golang:alpine AS builder

ARG GO_SHADOWSOCKS2_REF=v0.0.9
ARG GO_SHADOWSOCKS2_PKG=github.com/shadowsocks/go-shadowsocks2
ARG GO_SHADOWSOCKS2_REPO=https://$GO_SHADOWSOCKS2_PKG.git
ARG GO_SHADOWSOCKS2_SRC=$GOPATH/src/$GO_SHADOWSOCKS2_PKG

RUN apk add --no-cache --virtual .build-deps git

RUN git clone $GO_SHADOWSOCKS2_REPO $GO_SHADOWSOCKS2_SRC

RUN git -C $GO_SHADOWSOCKS2_SRC checkout $GO_SHADOWSOCKS2_REF

ENV CGO_ENABLED=0

RUN go get $GO_SHADOWSOCKS2_PKG



FROM dochang/confd:latest
LABEL maintainer="dochang@gmail.com"

COPY --from=builder /go/bin/* /usr/local/bin/

VOLUME ["/etc/shadowsocks"]

CMD ["go-shadowsocks2"]
