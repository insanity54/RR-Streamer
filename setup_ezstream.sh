#!/bin/bash

sudo mkdir -p /opt/ezstream
sudo cp ./sampleconfig.xml /opt/ezstream/stream.xml
sudo cp ./entry.sh /opt/ezstream/start.sh
sudo chmod +x /opt/ezstream/start.sh
sudo apt-get update && sudo apt-get install -y \
    sox libsox-fmt-all lame liquisoap liquidsoap-plugin-lame liquidsoap-plugin-pulseaudio liquidsoap-plugin-alsa liquidsoap-plugin-icecast \
    --no-install-recommends 
    
