MAINTAINER Chris Grimmett <chris@grimtech.net>

FROM ubuntu:precise

ADD . /ezstream

RUN apt-get update && apt-get install -y \
    libsox libsox-fmt-all ezstream lame \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["/ezstream/entry.sh"]