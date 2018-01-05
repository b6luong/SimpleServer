FROM ubuntu:16.04

RUN apt-get update 

COPY myserver /bin

EXPOSE 8080

ENTRYPOINT ["/bin/myserver"]
