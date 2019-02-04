build-node:
	cd node && docker build -t welldigital/serverless-build:node .

build-golang:
	cd golang && docker build -t welldigital/serverless-build:golang .

build-cimysql:
	cd circleci/mysql docker build -t welldigital/cimysql:5.6 .
