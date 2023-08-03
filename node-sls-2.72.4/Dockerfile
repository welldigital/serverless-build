FROM node:lts
# Install Serverless and Grunt Node.js dependencies.
RUN npm install -g npm && \
  npm install -g serverless@2.72.4 && \
  npm install -g grunt && \
  npm install -g gulp && \
  npm install -g node-gyp
# Setup Yarn packages
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
# Install unzip, zip, Python3, Python venv and create a symbolic link for python
RUN apt-get update && \
  apt-get install -y zip unzip python3 python3-venv && \
  ln -s /usr/bin/python3 /usr/bin/python
# Install unzip and AWS CLI
RUN apt-get update && apt-get install -y unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install
ENV TZ=Europe/London 
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2
