#!/bin/bash

## ensure mystream.xml is in place
if [[ ! -e /opt/ezstream/stream.xml ]]; then
    echo "/opt/ezstream/stream.xml does not exist"
    exit 1
fi

## ensure cofig file isnt the example
if grep -q 'example.com' /opt/ezstream/stream.xml; then
    echo "you must configure /opt/ezstream/stream.xml"
    exit 1
fi

pactl set-source-volume 1 12% # set input level in case system changed it
sox -t alsa -2 -s -r 44100 -c 2 default -t raw - | \
lame -r -a -m mono -b 16 --cbr --resample 22.050 --lowpass 4 - - | \
ezstream -qvc /opt/ezstream/stream.xml