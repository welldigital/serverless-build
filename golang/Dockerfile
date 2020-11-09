FROM circleci/golang:1.15.4-node

# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN sudo apt-get update && sudo apt-get install -y awscli 

# Setup SSH host verification for github.com (required for go get).
RUN mkdir -p ~/.ssh/ && \
  ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts

# Install Serverless Framework.
RUN sudo npm install -g serverless@1.83.0

# Install yarn
RUN sudo su && curl -o- -L https://yarnpkg.com/install.sh | bash

ENV TZ=Europe/London
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2
ENV GOPRIVATE="github.com/welldigital"

# Install Go "deployer" Well deployment tool
RUN go get github.com/welldigital/deployer && \
  go get -u github.com/mgechev/revive && \
  go get github.com/jteeuwen/go-bindata/...
