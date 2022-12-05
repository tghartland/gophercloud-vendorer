FROM golang:1.18

RUN go install github.com/tools/godep@latest

ENV GO111MODULE=off

WORKDIR /go/src/github.com/tghartland/gophercloud-vendorer
