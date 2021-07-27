build-node:
	cd node && docker build -t welldigital/serverless-build:node .

build-golang:
	cd golang && docker build -t welldigital/serverless-build:golang .

