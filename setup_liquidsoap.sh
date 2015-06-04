#!/bin/bash

sudo mkdir -p /opt/noaa
sudo cp ./examplestream.liq. /opt/noaa/stream.liq
sudo cp ./liquidsoap.conf /etc/init/liquidsoap.conf
sudo apt-get update && sudo apt-get install -y \
    liquisoap liquidsoap-plugin-all \
    --no-install-recommends 
    
