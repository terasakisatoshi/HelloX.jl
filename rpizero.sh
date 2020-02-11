#!/bin/bash

# Script for Raspberry Pi Zero
# https://hub.docker.com/layers/julia/library/julia/latest/images/sha256-1bfe9380ebd44f7fd18c3290a71e25f6278faa39c77562e1b18d3e9b119c7732
JL_RPIZERO=terasakisatoshi/jlcross:rpizero-v1.3.1
# Run make clean to reset host environment
make clean
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work ${JL_RPIZERO} julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildrpizero -v ${PWD}:/work -w /work ${JL_RPIZERO} make rpizero
# Test to run binary on other environments that does not have Julia environment
docker run --rm -it -v ${PWD}:/work -w /work balenalib/raspberry-pi:buster-20191030 build/bin/HelloX
