FROM ubuntu:18.04 as builder

RUN apt update && apt install -y --no-install-recommends \
	make \
	g++ \
	curl \
	ca-certificates

RUN mkdir -p ${HOME}/local/bin && mkdir ${HOME}/local/src
WORKDIR ${HOME}/local/src
RUN curl -LO https://ftp.gnu.org/gnu/gcc/gcc-9.2.0/gcc-9.2.0.tar.gz && tar xzvf gcc-9.2.0.tar.gz
WORKDIR gcc-9.2.0
RUN ./contrib/download_prerequisites && mkdir build 
WORKDIR build
RUN ../configure --enable-languages=c,c++ --prefix=/usr/local --disable-bootstrap --disable-multilib && \
	make -j2 > /dev/null && make install -j2 > /dev/null

FROM ubuntu:18.04 as install

RUN apt update && apt install -y --no-install-recommends g++
RUN rm -rf /usr/local
COPY --from=builder /usr/local /usr/local/