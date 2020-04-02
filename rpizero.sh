#!/bin/bash

# Script for Raspberry Pi Zero
JL_RPIZERO=terasakisatoshi/jlcross:rpizero-v1.4.0
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work ${JL_RPIZERO} julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildrpizero -v ${PWD}:/work -w /work ${JL_RPIZERO} make rpizero
# Test to run binary on other environments that does not have Julia environment
# This will fail, but could run on my (real) Raspberry Pi Zero W.
# docker run --rm -it -v ${PWD}:/work -w /work balenalib/raspberry-pi:buster-20191030 build/bin/HelloX
