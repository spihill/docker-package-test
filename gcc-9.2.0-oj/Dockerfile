FROM docker.pkg.github.com/spihill/docker-package-test/gcc-9.2.0:latest

RUN apt update && apt install -y --no-install-recommends \
	curl \
	git \
	python3.7 \
	python3-pip \
	python3-setuptools && \
	pip3 install wheel && \
	pip3 install -U online-judge-verify-helper