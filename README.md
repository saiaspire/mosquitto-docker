###Docker image for Mosquitto MQTT Broker on Ubuntu 14.04 LTS

Exposes ports 1883, 8883, 8884, 8885 and 8080.


Port 1883 is the standard unencrypted MQTT port and can be used with any MQTT client. Ports 8883 and 8884 use certificate based SSL/TLS encryption (TLSv1.2, TLSv1.1 or TLSv1.0) and require client support to connect. In both cases should use the certificate authority file mosquitto.org.crt to verify the server connection. Port 8883 allows unrestricted connections. Port 8884 requires clients to provide their own certificate to authenticate their connection. Port 8885 is used for TLS-PSK based encryption. It also listens for websockets connections on port 8080.
