# serverless-build

A Docker container used to build Serverless Node.js and Golang applications.

Node image contains:

* Node runtime
* Serverless framework Node.js packages
* Grunt for build tasks
* AWS CLI for interacting with AWS services

Go docker image contains:

* Node runtime (required by serverless)
* Serverless framework
* Golang 

## Building

* `make build`

Building golang image:

* `make build-golang`

## Deploying 

Merge changes to the prod branch and new images will be built and deployed via github actions. 

## Running (interactive)

* `docker run --rm -it ghcr.io/welldigital/serverless-build:golang /bin/bash`
* `docker run --rm -it ghcr.io/welldigital/serverless-build:node /bin/bash`

