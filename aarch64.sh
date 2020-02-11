# Script for AARCH64
# https://hub.docker.com/layers/julia/library/julia/latest/images/sha256-1bfe9380ebd44f7fd18c3290a71e25f6278faa39c77562e1b18d3e9b119c7732
JL_AARCH64=terasakisatoshi/jlcross:jetson-v1.3.1
# Run make clean to reset host environment
make clean
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work ${JL_AARCH64} julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildjetson -v ${PWD}:/work -w /work ${JL_AARCH64} make build
# Test to run binary on other environments that does not have Julia environment
docker run --rm -it -v ${PWD}:/work -w /work balenalib/jetson-nano:build-20190717 build/bin/HelloX
