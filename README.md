# serverless-build

A Docker container used to build Serverless Node.js and Golang applications.

Node image contains:

* Node runtime
* Serverless framework Node.js packages
* Grunt for build tasks
* AWS CLI for interacting with AWS services

Docker image contains:

* Node runtime (required by serverless)
* Serverless framework
* Golang 1.10

## Building

* `make build`

Building golang image:

* `make build-golang`

## Running (interactive)

* `docker run --rm -it welldigital/serverless-build:latest /bin/bash`
