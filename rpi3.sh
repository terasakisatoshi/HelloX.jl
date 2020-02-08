# Script for Raspberry Pi 3
# Run make clean to reset host environment
make clean
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work terasakisatoshi/jlcross:rpi3-v1.3.1 julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildrpi3 -v ${PWD}:/work -w /work terasakisatoshi/jlcross:rpi3-v1.3.1 make rpi3
# Test to run binary on other environments that does not have Julia environment
docker run --rm -it -v ${PWD}:/work -w /work balenalib/raspberrypi3:buster-run-20191106 build/bin/HelloX