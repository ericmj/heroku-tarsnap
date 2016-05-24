FROM heroku/cedar

RUN apt-get update
RUN apt-get -y install wget ca-certificates
RUN apt-get -y install build-essential libssl-dev zlib1g-dev e2fslibs-dev

RUN mkdir -p /home/build
WORKDIR /home/build

COPY build.sh /home/build/build.sh
ENTRYPOINT ./build.sh
