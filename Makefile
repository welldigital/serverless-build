build-node:
	cd node && docker build -t welldigital/serverless-build:node .

build-golang:
	cd golang && docker build -t welldigital/serverless-build:golang .

ci-node: install-docker build-node

ci-golang: install-docker build-golang

install-docker:
	apt-get update && apt-get install -y docker
