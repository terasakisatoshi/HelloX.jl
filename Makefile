.PHONY: run, clean

build: src/HelloX.jl
	julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaLang/PackageCompiler.jl",rev="master"))'
	julia --project=. -e 'using Pkg; Pkg.instantiate()'
	julia --project=. build.jl

rpizero: src/HelloX.jl
	julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/terasakisatoshi/PackageCompilerX.jl",rev="rpizero"))'
	julia --project=. -e 'using Pkg; Pkg.instantiate()'
	julia --project=. -e 'using PackageCompilerX; create_app(".", "build", force=true)'

run: build
	build/bin/HelloX

clean:
	git checkout Project.toml # reset Project toml
	rm -rf build
	rm -f HelloX/Manifest.toml
