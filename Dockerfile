FROM ubuntu:latest
EXPOSE 25566
RUN apt update -y && apt-get install wget git liblzma-dev -y; \ 
    mkdir FSend; \
    cd FSend; \
    wget -qO- https://get.haskellstack.org/ | sh; \
	git clone --single-branch --branch dev https://github.com/Innf107/FSend.git; 	
WORKDIR "/FSend/FSend/"
RUN stack build;
WORKDIR "/FSend/FSend/"
CMD  stack run; \
     echo "running";
