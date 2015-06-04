# logs
set("log.stdout", true)


# mic input
mic = input.pulseaudio(id = "ICOM via Mic")


#mic = visu.volume(mic) # won't work if calling with upstart
#out(mic) # output to speakers (uncomment for testing)


# encoding
audio = %mp3.cbr(
  stereo = false,
  samplerate = 22050,
  bitrate = 16
)


# stream to wunderground
output.icecast(audio,
  protocol = "http",
  host = "audiostream.example.com",
  port = 8000,
  password = "hackme",
  mount = "name/blah.mp3",
  name = "title of the stream",
  description = "description of the stream",
  genre = "Other",
  url = "http://www.example.com",
  public = true,
  icy_metadata = "false",
  mksafe(mic)
)