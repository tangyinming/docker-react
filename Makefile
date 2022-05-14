VERSION := latest

build:
	docker build -t ymtangab/docker-react .

release:
	echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USERNAME} --password-stdin
	docker push ymtangab/docker-react:${VERSION}
		VERSION=${VERSION} ./deploy.sh
