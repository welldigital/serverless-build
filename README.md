# serverless-build

A Docker container used to build Serverless Node.js applications.

Contains:

* Node runtime
* Serverless framework Node.js packages
* Grunt for build tasks
* AWS CLI for interacting with AWS services

## Building

* `make build`

## Running (interactive)

* `docker run --rm -it welldigital/serverless-build:latest /bin/bash`
