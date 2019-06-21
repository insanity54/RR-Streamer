#!/bin/bash

## DO NOT USE. USE ANSIBLE, YOU DUMMY!


sudo mkdir -p /opt/noaa
sudo cp ./examplestream.liq. /opt/noaa/stream.liq
sudo cp ./liquidsoap.conf /etc/init/liquidsoap.conf
sudo apt-get update && sudo apt-get install -y \
    liquidsoap liquidsoap-plugin-all \
    --no-install-recommends 
    
