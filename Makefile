.PHONY: run, clean

build: src/HelloX.jl
	julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaLang/PackageCompiler.jl",rev="master"))'
	julia --project=. -e 'using Pkg; Pkg.instantiate()'
	julia --project=. build.jl

run: build
	build/bin/HelloX

clean:
	rm -rf build
	rm -f HelloX/Manifest.toml
