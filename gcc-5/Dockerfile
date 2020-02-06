FROM ubuntu:18.04

RUN apt update && apt install -y --no-install-recommends \
	git \
	g++-5 \
	curl \
	ca-certificates \
	python3.7 \
	python3-pip \
	python3-setuptools && \
	pip3 install wheel && \
	pip3 install -U online-judge-verify-helper