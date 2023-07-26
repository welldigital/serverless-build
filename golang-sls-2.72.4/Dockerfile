FROM cimg/go:1.17-node

# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN sudo apt-get update && sudo apt-get install -y awscli

# Setup SSH host verification for github.com (required for go get).
RUN mkdir -p ~/.ssh/ && \
  ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts

# Install Serverless Framework.
RUN sudo npm install -g serverless@2.72.4

# Install yarn
RUN sudo su && curl -o- -L https://yarnpkg.com/install.sh | bash

# Install GitHub LFS.
RUN sudo apt-get install -y git-lfs && sudo git lfs install

ENV TZ=Europe/London
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2
ENV GOPRIVATE="github.com/welldigital"

RUN go install github.com/mgechev/revive@v1.1.3
RUN go get github.com/jteeuwen/go-bindata/...

# go mod directory must be clean for circleci cache
RUN sudo rm -rf /go/pkg/mod/*
