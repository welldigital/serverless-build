FROM golang:latest

RUN go get -u github.com/golang/lint/golint && \
  go get -u github.com/stripe/safesql && \
  go get github.com/securego/gosec/cmd/gosec/...

WORKDIR ~/go/src/

CMD [ "/bin/bash", "/gocheck/gocheck.sh" ]