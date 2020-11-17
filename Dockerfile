FROM ubuntu:latest
EXPOSE 5000
RUN apt update -y && apt install wget -y && apt install git -y; \ 
    mkdir FSend; \
    cd FSend; \
    wget -qO- https://get.haskellstack.org/ | sh; \
	git clone --single-branch --branch dev https://github.com/Innf107/FSend.git; 	
WORKDIR "/FSend/FSend/server"
RUN stack build;
WORKDIR "/FSend/FSend/server"
CMD  stack run; \
     echo "running";
