FROM ubuntu:14.04

MAINTAINER Saikrishnan Ranganathan <saiaspire@gmail.com>

# Install to use apt-add-repository
RUN apt-get update && apt-get install -y software-properties-common

# Add mosquitto ppa and install latest
RUN apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa && apt-get install -y mosquitto

# Default store for persistence
VOLUME /var/lib/mosquitto/

EXPOSE 1883 8883 8884 8885 8080

CMD /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
