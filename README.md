# Docker Image for CS:GO Demo Parser on Linux

This is a slighly better Dockerfile image for [demoinfogo-linux](https://github.com/kaimallea/demoinfogo-linux), which is a Linux port of the [csgo-demoinfo](https://github.com/ValveSoftware/csgo-demoinfo).

## Building the image:

    $ docker build -t demoinfogo-linux:latest .
    
## Running the parser:

The demo files should be stored in a directory and mounted to the Docker instance using the `-v` option:

    $ docker run --rm -v <Demo Directory>:/demos/ demoinfogo-linux:latest demofile.dem
