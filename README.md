# ezstream Docker image
quickly set up an ezstream source client


## Usage

create a mystream.xml config file on the host system at `/srv/ezstream` (or wherever you want it.) This file is what tells ezstream how to connect to the icecast/etc. server, and sets metadata for your stream. Here's an example config: 

```
<ezstream>
    <url>http://audio.example.com:80/foo/stream.mp3</url>
    <sourcepassword>XXXXXXXXX</sourcepassword>
    <format>MP3</format>
    <filename>stdin</filename>
    <svrinfoname>STREAM NAME HERE</svrinfoname>
    <svrinfourl>http://www.example.com</svrinfourl>
    <svrinfogenre>Other</svrinfogenre>
    <svrinfodescription>DESCRIPTION</svrinfodescription>
    <svrinfobitrate>16</svrinfobitrate>
    <svrinfochannels>1</svrinfochannels>
    <svrinfosamplerate>22050</svrinfosamplerate>
    <svrinfopublic>1</svrinfopublic>
</ezstream>
```

Remember, this config must be named mystream.xml. Take note of where you save the file. I put mine in `/srv/ezstream` on the host machine.

Run the docker image (substituting your directory, if you put your config somewhere else):

`$ docker run -v /srv/ezstream:/ezstream --name ezstream`

