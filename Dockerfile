MAINTAINER Chris Grimmett <chris@grimtech.net>

FROM ubuntu:precise

ADD . /rr-streamer

RUN apt-get update && apt-get install -y \
		gcc libc6-dev make \
		--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["/rr-streamer/entry.sh"]