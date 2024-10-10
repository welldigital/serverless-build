FROM cimg/go:1.22.4-node

# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN sudo apt-get update && \
  sudo apt-get install -y git-lfs && \
  sudo git lfs install

# Install AWS Cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  sudo ./aws/install && \
  sudo rm -rf aws && rm awscliv2.zip

# Setup SSH host verification for github.com (required for go get).
RUN mkdir -p ~/.ssh/ && \
  ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts

# Install Serverless Framework & Yarn
RUN sudo npm install -g serverless@3.33.0 && \
  sudo curl -o- -L https://yarnpkg.com/install.sh | bash


ENV TZ=Europe/London
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2
ENV GOPRIVATE="github.com/welldigital"

RUN go install github.com/mgechev/revive@latest && \
  go install github.com/kevinburke/go-bindata/v4/...@latest

# go mod directory must be clean for circleci cache
RUN rm -rf /go/pkg/mod/* && sudo chmod 666 /home/circleci/go/pkg/mod
