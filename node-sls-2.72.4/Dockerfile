FROM node:lts
# Install Serverless and Grunt Node.js dependencies.
RUN sudo npm install -g npm && sudo npm install -g serverless@2.72.4 && sudo npm install -g grunt && sudo npm install -g gulp
# Setup Yarn packages
RUN sudo su && curl -o- -L https://yarnpkg.com/install.sh | bash
# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN sudo apt-get update && sudo apt-get install -y zip unzip python3 && sudo apt install python3.8-venv
# Install AWS CLI tools.
RUN sudo su && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle-1.16.96.zip" -o "awscli-bundle.zip" && \
  unzip awscli-bundle.zip && \
  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
ENV TZ=Europe/London 
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2
