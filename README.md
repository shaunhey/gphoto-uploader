# gphoto-uploader
Docker image for running Google Photos Desktop Uploader under Linux/Wine and x11vnc  
(translated from [uyorum/gphoto-uploader](https://github.com/uyorum/gphoto-uploader))

## Overview

1. Install [Google Photos Desktop Uploader](https://photos.google.com/apps) on a Windows machine
2. Log in with the account you want to use
3. Export "HKEY\_CURRENT\_USER\Software\Google\Picasa\Picasa2\Preferences" to gphoto.reg

```bash
$ git clone https://github.com/shaunhey/gphoto-uploader
$ cd gphoto-uploader
  (copy gphoto.reg to this directory)
$ docker build -t gphoto-uploader .
$ docker run -d \
    --name gphoto-uploader \
    -p 5900:5900
    -v /PATH/TO/UPLOAD:/upload \
    gphoto-uploader
```

Once the container is running, connect to localhost:5900 using the vnc client of your choice to complete the Google Photos Desktop Uploader installation and configuration.
