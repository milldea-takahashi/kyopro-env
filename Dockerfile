FROM ubuntu:latest

COPY requirements.txt ./requirements.txt

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y git time libboost-all-dev python3 python3-pip
RUN pip3 install -r requirements.txt --break-system-packages
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* requirements.txt
