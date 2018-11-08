build:
	docker build -t welldigital/serverless-build:latest .

build-node8:
	docker build -f Dockerfile.node8 -t welldigital/serverless-build:node8 .

build-golang:
	docker build -f Dockerfile.golang -t welldigital/serverless-build:golang .

build-golang-111:
	docker build -f Dockerfile.golang-111 -t welldigital/serverless-build:golang-111 .

build-cimysql:
	docker build -f Dockerfile.cimysql -t welldigital/cimysql:5.6 .
