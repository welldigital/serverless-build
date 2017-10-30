FROM node:6.10.3
# Install Serverless and Grunt Node.js dependencies.
RUN npm install -g serverless && \
    npm install -g grunt
# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN apt-get update && \
    apt-get install -y unzip && \
    apt-get install -y python-dev
# Install AWS CLI tools.
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

RUN npm install -g yarn@1.2.1