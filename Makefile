build:
	docker build -t welldigital/serverless-build:latest .

build-node8:
	docker build -f Dockerfile.node8 -t welldigital/serverless-build:node8 .