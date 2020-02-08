.PHONY: run, clean

build: src/HelloX.jl
	julia -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaComputing/PackageCompilerX.jl.git",rev="master"))'
	julia --startup-file=no --project=. -e 'using Pkg; Pkg.instantiate()'
	julia build.jl

run: build
	build/bin/HelloX

clean:
	rm -rf build
	rm -f HelloX/Manifest.toml
