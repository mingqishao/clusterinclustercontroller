from ubuntu:20.04
RUN apt-get update && apt-get install wget git -y

COPY ./ /go/src/github.com/mingqishao/clusterinclustercontroller
ENV GOROOT=/usr/local/go
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH

RUN cd /tmp/ && \
	wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz && \
	tar -xvf go1.11.linux-amd64.tar.gz && \
	mv go /usr/local 
