FROM node:6.10.3
# Install Serverless and Grunt Node.js dependencies.
RUN npm install -g serverless && \
    npm install -g grunt && \
    npm install -g yarn@1.3.2
# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN apt-get update && \
    apt-get install -y zip unzip python-dev
# Install AWS CLI tools.
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
# Install DynamoDB local, for local integration tests.
RUN apt-get install -y openjdk-7-jre
RUN mkdir -p /opt/dynamodb/
RUN curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -o /opt/dynamodb/dynamo.tar.gz
RUN cd /opt/dynamodb && tar xvf dynamo.tar.gz && rm dynamo.tar.gz && cd /
# To run it, run:
# nohup java -Djava.library.path=/opt/dynamodb/DynamoDBLocal_lib -jar /opt/dynamodb/DynamoDBLocal.jar &
ENV TZ=Europe/London 
ENV NODE_ENV=dev
ENV AWS_DEFAULT_REGION=eu-west-2