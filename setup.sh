#!/bin/bash

sudo mkdir -p /opt/ezstream
sudo cp ./sampleconfig.xml /opt/ezstream/stream.xml
sudo cp ./entry.sh /opt/ezstream/start.sh
sudo apt-get update && sudo apt-get install -y \
    sox libsox-fmt-all ezstream lame \
    --no-install-recommends 
    
