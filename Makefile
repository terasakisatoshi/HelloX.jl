.PHONY: run, rpi3, clean

build: src/HelloX.jl
	julia -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaComputing/PackageCompilerX.jl.git",rev="master"))'
	julia --startup-file=no --project=. -e 'using Pkg; Pkg.instantiate()'
	julia build.jl

rpi3: src/HelloX.jl
	julia -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/terasakisatoshi/PackageCompilerX.jl.git",rev="arm"))'
	julia --startup-file=no --project=. -e 'using Pkg; Pkg.instantiate()'
	julia build.jl

run: build
	build/bin/HelloX

clean:
	rm -rf build
	rm -f HelloX/Manifest.toml
