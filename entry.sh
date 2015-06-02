#!/bin/bash

## ensure mystream.xml is in place
if [[ ! -e /opt/ezstream/stream.xml ]]; then
    echo "/opt/ezstream/stream.xml does not exist"
    exit 1
fi


sox -t alsa -2 -s -r 44100 -c 2 default -t raw - | \
lame -r -a -m mono -b 16 --cbr --resample 22.050 --lowpass 4 - - | \
ezstream -qvc /opt/ezstream/stream.xml