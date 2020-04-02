.PHONY: run, clean

build: src/HelloX.jl
	julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaLang/PackageCompiler.jl",rev="master"))'
	julia --project=. -e 'using Pkg; Pkg.instantiate()'
	julia --project=. build.jl

rpizero: src/HelloX.jl
	julia --project=. -e 'using Pkg; Pkg.add("PackageCompiler")'
	julia --project=. -e 'using Pkg; Pkg.instantiate()'
	julia --project=. -e 'include("build_rpizero.jl")'

run: build
	build/bin/HelloX

clean:
	git checkout Project.toml # reset Project toml
	rm -rf build
	rm -f HelloX/Manifest.toml
