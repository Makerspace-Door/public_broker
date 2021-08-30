#!/bin/bash
mosquitto_pub -h 127.0.0.1 -p 1883 -d -t test -m message
mosquitto_pub -h 127.0.0.1 -p 8883 -d -t test -m message
# no websocket test with mosquitto, you can use http://www.hivemq.com/demos/websocket-client/