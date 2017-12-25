#!/bin/sh

ping -q -c2 [A reliable IP address] > /dev/null

if [ $? -eq 0 ]
then
        echo "Enabling Cloud Componets"
        mv /home/homeassistant/.homeassistant/packages/cloud.yaml* /home/homeassistant/.homeassistant/packages/cloud.yaml # replace with the path of the yaml package
else
        echo "Disabling Cloud Componets"
        mv /home/homeassistant/.homeassistant/packages/cloud.yaml* /home/homeassistant/.homeassistant/packages/cloud.yaml.down # replace with the path of the yaml package
fi
