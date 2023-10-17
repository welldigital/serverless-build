FROM golang:1.17

RUN go get -u golang.org/x/lint/golint && \
  go get -u github.com/stripe/safesql && \
  go get github.com/securego/gosec/cmd/gosec/...

WORKDIR ~/go/src/

CMD [ "/bin/bash", "/gocheck/gocheck.sh" ]