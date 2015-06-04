# rr-streamer

stream to radioreference or wunderground or any other icecast server using headless linux. I'm using this to stream Spokane weather radio (NOAA WXL86) to wunderground.com. (http://grimtech.net/noaa-wxl86-radio-stream/)


## usage

use ubuntu of some sort. (12.04 tested)

run setup.sh

put your stream's configuration in `/opt/noaa/stream.liq`

put the liquidsoap.conf file in /etc/init

run `service liquidsoap start`

you should be streaming now. If you have problems, check these logs:

* /var/log/syslog
* /var/log/upstart/liquidsoap.log

