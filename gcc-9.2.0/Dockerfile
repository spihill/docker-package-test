FROM ubuntu:18.04

RUN apt update && apt install -y --no-install-recommends \
	make \
	gcc \
	g++ \
	wget \
	git \
	python3.7 \
	python3-pip \
	python3-setuptools && \
	pip3 install wheel && \
	pip3 install -U online-judge-verify-helper
RUN mkdir -p ${HOME}/local/bin && mkdir ${HOME}/local/src && cd ${HOME}/local/src
RUN wget https://ftp.gnu.org/gnu/gcc/gcc-9.2.0/gcc-9.2.0.tar.gz && tar xzvf gcc-9.2.0.tar.gz && cd gcc-9.2.0
RUN ./contrib/download_prerequisites && mkdir build && cd build
RUN ../configure --enable-languages=c,c++ --prefix=/usr/local --disable-bootstrap --disable-multilib
RUN make -j2 > /dev/null && make install -j2 > /dev/null
RUN rm -rf ${HOME}/local/src