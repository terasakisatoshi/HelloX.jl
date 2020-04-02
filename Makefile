.PHONY: run, clean

JL_RPIZERO:=terasakisatoshi/jlcross:rpizero-v1.4.0

build: src/HelloX.jl
	docker build -t jlx -f docker/Dockerfile .
	docker run --rm -it --name buildHelloX -v ${PWD}:/work -w /work jlx julia --project=/work -e 'using Pkg; Pkg.instantiate(); include("/work/build.jl")'

rpizero: src/HelloX.jl
	# Check Julia version
	docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work ${JL_RPIZERO} julia -e "using InteractiveUtils; versioninfo()"
	# Build executable which will be stored under a directory named `build`
	docker run --rm -it --name buildrpizero -v ${PWD}:/work -w /work ${JL_RPIZERO} julia --project=/work -e 'using Pkg; Pkg.instantiate(); include("/work/build_rpizero.jl")'
	# Test to run binary on other environments that does not have Julia environment
	# This will fail, but could run on my (real) Raspberry Pi Zero W.
	docker run --rm -it -v ${PWD}:/work -w /work balenalib/raspberry-pi:buster-20191030 build/bin/HelloX


run: build
	build/bin/HelloX

clean:
	git checkout Project.toml # reset Project toml
	rm -rf build
	rm -f HelloX/Manifest.toml
