FROM golang:1.27

LABEL org.opencontainers.image.source https://github.com/appscodelabs/dlv-docker

RUN set -x \
  && export GOBIN=/usr/local/bin \
  && go install github.com/go-delve/delve/cmd/dlv@v1.27.1 \
  && export GOBIN= \
  && cd /go \
  && rm -rf /go/pkg /go/src
