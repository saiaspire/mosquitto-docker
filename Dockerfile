FROM ubuntu:14.04

MAINTAINER Saikrishnan Ranganathan <saiaspire@gmail.com>

RUN apt-get update && apt-get install -y software-properties-common

RUN apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa && apt-get install -y mosquitto

VOLUME /var/lib/mosquitto/

EXPOSE 1883
EXPOSE 8883
EXPOSE 8884
EXPOSE 8885
EXPOSE 8080

CMD /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
