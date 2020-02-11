#!/bin/bash

# Script for Raspberry Pi 3
# https://hub.docker.com/layers/julia/library/julia/latest/images/sha256-1bfe9380ebd44f7fd18c3290a71e25f6278faa39c77562e1b18d3e9b119c7732
#JL_ARMV7=julia@sha256:1bfe9380ebd44f7fd18c3290a71e25f6278faa39c77562e1b18d3e9b119c7732
JL_ARMV7=terasakisatoshi/jlcross:rpi3-v1.3.1
# Run make clean to reset host environment
make clean
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work ${JL_ARMV7} julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildrpi3 -v ${PWD}:/work -w /work ${JL_ARMV7} make build
# Test to run binary on other environments that does not have Julia environment
docker run --rm -it -v ${PWD}:/work -w /work balenalib/raspberrypi3:buster-run-20191106 build/bin/HelloX
