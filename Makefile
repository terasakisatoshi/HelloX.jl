.PHONY: run, build, clean, rpizero, rpi3, aarch64

JL_RPIZERO=terasakisatoshi/jlcross:rpizero-v1.4.0
JL_RPI3=terasakisatoshi/jlcross:rpi3-v1.4.0
JL_AARCH64=julia:1.4.0@sha256:fed785bf1be9b23ec6f3862073ac9099304ed4481101a57e093a04fcab67400d

build: src/HelloX.jl
	docker build -t jlx -f docker/Dockerfile .
	# Build executable which will be stored under a directory named `build`
	docker run --rm -it --name buildHelloX -v ${PWD}:/work -w /work jlx julia --project=/work -e 'using Pkg; Pkg.instantiate(); include("/work/build.jl")'
	# Test to run binary on other environments that does not have Julia environment
	docker run --rm -it --name testout$@   -v ${PWD}:/work -w /work ubuntu:18.04 build/bin/HelloX

rpi3: src/HelloX.jl
	# Check Julia version
	docker run --rm -it --name versioncheck_$@ -v ${PWD}:/work -w /work ${JL_RPI3} julia -e "using InteractiveUtils; versioninfo()"
	# Build executable which will be stored under a directory named `build_$@`
	docker run --rm -it --name build_$@        -v ${PWD}:/work -w /work ${JL_RPI3} julia --project=/work -e 'using Pkg; Pkg.instantiate(); builddir="build_$@"; include("/work/build.jl")'
	# Test to run binary on other environments that does not have Julia environment
	docker run --rm -it --name testout_$@      -v ${PWD}:/work -w /work ${JL_RPI3} build/bin/HelloX

aarch64: src/HelloX.jl
	# Check Julia version
	docker run --rm -it --name versioncheck_$@ -v ${PWD}:/work -w /work ${JL_RPI3} julia -e "using InteractiveUtils; versioninfo()"
	# Build executable which will be stored under a directory named `build_$@`
	docker run --rm -it --name build_$@        -v ${PWD}:/work -w /work ${JL_RPI3} julia --project=/work -e 'using Pkg; Pkg.instantiate(); builddir="build_$@"; include("/work/build.jl")'
	# Test to run binary on other environments that does not have Julia environment
	docker run --rm -it --name testout_$@      -v ${PWD}:/work -w /work ${JL_RPI3} build/bin/HelloX

rpizero: src/HelloX.jl
	# Check Julia version
	docker run --rm -it --name versioncheck_$@ -v ${PWD}:/work -w /work ${JL_RPIZERO} julia -e "using InteractiveUtils; versioninfo()"
	# Build executable which will be stored under a directory named `build_$@`
	docker run --rm -it --name build_$@        -v ${PWD}:/work -w /work ${JL_RPIZERO} julia --project=/work -e 'using Pkg; Pkg.instantiate(); include("/work/build_rpizero.jl")'
	# Test to run binary on other environments that does not have Julia environment
	# This will fail, but could run on my (real) Raspberry Pi Zero W.
	#docker run --rm -it --name testout_$@      -v ${PWD}:/work -w /work ${JL_RPIZERO} build_$@/bin/HelloX

run: build
	build/bin/HelloX

clean:
	rm -rf build build_rpi3 build_rpizero
	rm -f HelloX/Manifest.toml
