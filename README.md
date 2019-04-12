# rr-streamer

stream to radioreference or wunderground or any other icecast server using headless linux. I'm using this to stream Spokane weather radio (NOAA WXL86) to wunderground.com. (http://grimtech.net/noaa-wxl86-radio-stream/)

## dependencies

  * liquidsoap
  * liquidsoap-plugin-pulseaudio
  * liquidsoap-plugin-icecast
  * liquidsoap-plugin-lame

## usage

use linux of some sort. (ubuntu 12.04 tested)

run setup.sh

put your stream's configuration in `/opt/noaa/stream.liq`

put the liquidsoap.conf file in /etc/init

run `service liquidsoap start`

you should be streaming now. If you have problems, check these logs:

* /var/log/syslog
* /var/log/upstart/liquidsoap.log


### Future plans: redundancy using Icecast fallbacks

https://serverfault.com/questions/549192/i-have-an-issue-with-fallback-in-an-icecast-setup
http://sourcefabric.booktype.pro/airtime-25-for-broadcasters/icecast-handover/
