FROM golang

LABEL org.opencontainers.image.source https://github.com/appscodelabs/dlv-docker

RUN set -x \
  && export GOBIN=/usr/local/bin \
  && go install github.com/bwplotka/bingo@latest \
  && bingo get -l github.com/bwplotka/bingo \
  && bingo get -l github.com/go-delve/delve/cmd/dlv@v1.8.0 \
  && export GOBIN=                                \
  && cd /go \
  && rm -rf /go/pkg /go/src
