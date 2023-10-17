FROM golang:1.17

ENV TZ=Europe/London
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2
ENV GOPRIVATE="github.com/welldigital"""

RUN go get -u golang.org/x/lint/golint && \
  go get -u github.com/stripe/safesql && \
  go get github.com/securego/gosec/cmd/gosec/...

WORKDIR ~/go/src/

CMD [ "/bin/bash", "/gocheck/gocheck.sh" ]