#!/bin/bash

## ensure mystream.xml is in place
if [[ ! -e /ezstream/mystream.xml ]]; then
    echo "/ezstream/mystream.xml does not exist"
    exit 1
fi


sox -t alsa -2 -s -r 44100 -c 2 default -t raw - | \
lame -r -a -m mono -b 16 --cbr --resample 22.050 --lowpass 4 - - | \
ezstream -qvc /ezstream/mystream.xml