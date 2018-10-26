build:
	docker build -t welldigital/serverless-build:latest .

build-node8:
	docker build -f Dockerfile.node8 -t welldigital/serverless-build:node8 .

build-golang:
	docker build -f Dockerfile.golang -t welldigital/serverless-build:golang .

build-cimysql:
	docker build -f Dockerfile.cimysql -t welldigital/serverless-build:cimysql .