build-node:
	cd node && docker build -t ghcr.io/welldigital/serverless-build:node .

build-golang:
	cd golang && docker build -t ghcr.io/welldigital/serverless-build:golang .

