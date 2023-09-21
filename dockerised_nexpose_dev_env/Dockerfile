FROM ubuntu:22.04

RUN apt-get update

RUN apt-get update

RUN apt-get install -y git wget tar zip sudo

EXPOSE 8000 22 3780

RUN useradd -m nexpose_dev
RUN echo "nexpose_dev:notpassword" | chpasswd
RUN adduser nexpose_dev sudo

RUN useradd -r -u 1001 -g nexpose_dev nexpose_dev

ADD nexpose_setup_script.sh /nexpose_setup_script.sh

ENTRYPOINT sleep infinity
