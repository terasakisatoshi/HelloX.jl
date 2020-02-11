# HelloX.jl

- Hello World Application that will be compiled via NEW [PackageCompiler.jl](https://github.com/JuliaLang/PackageCompiler.jl)
  - Since [PackageCompilerX.jl](https://github.com/JuliaLang/PackageCompilerX.jl) has been moved to PackageCompiler.jl, We will call the revised PacakgeCompiler as NEW PackageCompiler.jl
- NEW PackageCompiler.jl has a feature that creates "apps" which are a bundle of files including an executable that can be sent and run on other machines without Julia being installed on that machine.
- It will solve two language problem. No need to convert Python to C++.

# Usage

## Clone [HelloX.jl](https://github.com/terasakisatoshi/HelloX.jl)

- Let's clone/download our repository `HelloX.jl` with the following command

```console
$ git clone https://github.com/terasakisatoshi/HelloX.jl
$ cd HelloX
```

## Prepare Environment

- In this section, you're supposed to be installed Julia on your PC.
If you do not have it, please download from https://julialang.org/downloads/
- We've confirmed our Application works for Julia v1.3.1

```console
julia -e 'using InteractiveUtils; versioninfo()'
Julia Version 1.3.1
Commit 2d5741174c (2019-12-30 21:36 UTC)
Platform Info:
  OS: macOS (x86_64-apple-darwin18.6.0)
  CPU: Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, skylake)
Environment:
  JULIA_EDITOR = subl
```

- Before compiling our package, let's confirm our application named `HelloX` works on your environment.

```
$ julia --project=. -e 'using Pkg; Pkg.instantiate()'
$ julia --project=. -e 'using HelloX; HelloX.julia_main()'
```

- It will output the following result.

```
Cloning default registries into `~/.julia`
Cloning registry from "https://github.com/JuliaRegistries/General.git"
  Added registry `General` to `~/.julia/registries/General`
Installed SortingAlgorithms ── v0.3.1
Installed Missings ─────────── v0.4.3
Installed DataAPI ──────────── v1.1.0
Installed OrderedCollections ─ v1.1.0
Installed Example ──────────── v0.5.3
Installed StatsBase ────────── v0.32.0
Installed DataStructures ───── v0.17.9
Installed UnicodePlots ─────── v1.1.0
ARGS = String[]
Base.PROGRAM_FILE = ""
Hello World from HelloX.jl
Hello, World from Example.jl
        ┌────────────────────────────────────────┐
      1 │⠀⠀⠀⠀⠀⠀⢀⠖⢹⠉⢢⠀⠀⢀⠞⠉⠉⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠉⠀⠀⢀│ cos(x)
        │⠀⠀⠀⠀⠀⢠⠊⠀⢸⠀⠀⠳⣠⠊⠀⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⢀⡠⠒⠁│ sin(x)
        │⠀⠀⠀⠀⢀⠇⠀⠀⢸⠀⠀⢠⢷⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢇⡠⠒⠁⠀⠀⠀│ line
        │⠀⠀⠀⠀⡜⠀⠀⠀⢸⠀⠀⡜⠀⢧⠀⠀⠀⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⡞⠁⠀⠀⠀⠀⠀⠀│
        │⠀⠀⠀⢸⠀⠀⠀⠀⢸⠀⢸⠀⠀⠘⡄⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⢀⡠⠒⠁⡸⠀⠀⠀⠀⠀⠀⠀⠀│
        │⠀⠀⢀⠇⠀⠀⠀⠀⢸⢀⠇⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⢱⠀⠀⢀⡠⠒⠁⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀│
        │⠀⠀⡜⠀⠀⠀⠀⠀⢸⡜⠀⠀⠀⠀⠈⡆⠀⠀⠀⠀⠀⢈⡦⠒⠁⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀│
f(x)    │⠤⠤⠧⠤⠤⠤⠤⠤⢼⠧⠤⠤⠤⠤⠤⠼⡤⠤⠤⡤⠴⠥⠼⡤⠤⠤⠤⠤⠤⢴⠥⠤⠤⠤⠤⠤⢤⠤⠤⠤│
        │⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⣣⠔⠉⠀⠀⠀⠀⢣⠀⠀⠀⠀⢀⠇⠀⠀⠀⠀⠀⢀⠇⠀⠀⠀│
        │⠀⠀⠀⠀⠀⠀⠀⡸⢸⠀⠀⠀⠀⡠⠔⠉⠈⡆⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀│
        │⠀⠀⠀⠀⠀⠀⢀⠇⢸⠀⡠⠔⠉⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⢱⠀⠀⢠⠃⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀│
        │⠀⠀⠀⠀⠀⠀⡞⡠⢼⠉⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⢇⠀⡞⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀│
        │⠀⠀⠀⠀⡠⡼⠉⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⠀⠘⡾⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀│
        │⠀⡠⠔⠉⡰⠁⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⠀⠀⠀⠀⡜⠙⣄⠀⠀⠀⠀⡜⠁⠀⠀⠀⠀⠀⠀│
     -1 │⠊⢀⣀⠜⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⣀⣀⠜⠀⠀⠈⢦⣀⣠⠜⠀⠀⠀⠀⠀⠀⠀⠀│
        └────────────────────────────────────────┘
        -2                                       7
                            x%
```

- If your terminal outputs sin, cos curve and linear line like above, you are good to go.
- Note that our application `HelloX` still depends on Julia and its packages [UnicodePlots.jl](https://github.com/Evizero/UnicodePlots.jl), [Example.jl](https://github.com/JuliaLang/Example.jl).

## Compile `HelloX.jl`

- In this section, let's see NEW `PackageCompiler.jl` will generate a binary that runs on other machines without Julia being installed on that machine.

### Run build script

- `make build` command will compile our Julia package that is `HelloX`. This command is equivalent to:

```console
$ julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaLang/PackageCompiler.jl",rev="master"))'
$ julia --project=. -e 'using Pkg; Pkg.instantiate()'
$ julia --project=. build.jl
```

- The output should be

```console
$ make build
julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaLang/PackageCompiler.jl",rev="master"))'
   Cloning git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
  Updating git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
  Updating git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
   Cloning default registries into `~/.julia`
   Cloning registry from "https://github.com/JuliaRegistries/General.git"
     Added registry `General` to `~/.julia/registries/General`
 Resolving package versions...
 Installed Missings ─────────── v0.4.3
 Installed SortingAlgorithms ── v0.3.1
 Installed DataAPI ──────────── v1.1.0
 Installed Example ──────────── v0.5.3
 Installed OrderedCollections ─ v1.1.0
 Installed DataStructures ───── v0.17.9
 Installed StatsBase ────────── v0.32.0
 Installed UnicodePlots ─────── v1.1.0
  Updating `/work/Project.toml`
 [no changes]
  Updating `/work/Manifest.toml`
 [no changes]
julia --project=. -e 'using Pkg; Pkg.instantiate()'
julia --project=. build.jl
[ Info: PackageCompiler: creating base system image (incremental=false)...
[ Info: PackageCompiler: creating system image object file, this might take a while...
$ ls
LICENSE       Makefile      Manifest.toml Project.toml  README.md     build         build.jl      src
```

- You'll find a `build` directory is generated. It contains build binary exactly what we want.

### Run built binary

- Let's see what happens running `make run` which is equivalent to `build/bin/HelloX`

```console
$ make run
build/bin/HelloX
ARGS = String[]
Base.PROGRAM_FILE = "build/bin/HelloX"
Hello World from HelloX.jl
Hello, World from Example.jl
           ┌────────────────────────────────────────┐
         1 │⠀⠀⠀⠀⠀⠀⢀⠖⢹⠉⢢⠀⠀⢀⠞⠉⠉⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠉⠀⠀⢀│ cos(x)
           │⠀⠀⠀⠀⠀⢠⠊⠀⢸⠀⠀⠳⣠⠊⠀⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⢀⡠⠒⠁│ sin(x)
           │⠀⠀⠀⠀⢀⠇⠀⠀⢸⠀⠀⢠⢷⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢇⡠⠒⠁⠀⠀⠀│ line
           │⠀⠀⠀⠀⡜⠀⠀⠀⢸⠀⠀⡜⠀⢧⠀⠀⠀⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⡞⠁⠀⠀⠀⠀⠀⠀│
           │⠀⠀⠀⢸⠀⠀⠀⠀⢸⠀⢸⠀⠀⠘⡄⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⢀⡠⠒⠁⡸⠀⠀⠀⠀⠀⠀⠀⠀│
           │⠀⠀⢀⠇⠀⠀⠀⠀⢸⢀⠇⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⢱⠀⠀⢀⡠⠒⠁⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀│
           │⠀⠀⡜⠀⠀⠀⠀⠀⢸⡜⠀⠀⠀⠀⠈⡆⠀⠀⠀⠀⠀⢈⡦⠒⠁⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀│
   f(x)    │⠤⠤⠧⠤⠤⠤⠤⠤⢼⠧⠤⠤⠤⠤⠤⠼⡤⠤⠤⡤⠴⠥⠼⡤⠤⠤⠤⠤⠤⢴⠥⠤⠤⠤⠤⠤⢤⠤⠤⠤│
           │⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⣣⠔⠉⠀⠀⠀⠀⢣⠀⠀⠀⠀⢀⠇⠀⠀⠀⠀⠀⢀⠇⠀⠀⠀│
           │⠀⠀⠀⠀⠀⠀⠀⡸⢸⠀⠀⠀⠀⡠⠔⠉⠈⡆⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀│
           │⠀⠀⠀⠀⠀⠀⢀⠇⢸⠀⡠⠔⠉⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⢱⠀⠀⢠⠃⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀│
           │⠀⠀⠀⠀⠀⠀⡞⡠⢼⠉⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⢇⠀⡞⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀│
           │⠀⠀⠀⠀⡠⡼⠉⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⠀⠘⡾⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀│
           │⠀⡠⠔⠉⡰⠁⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⠀⠀⠀⠀⡜⠙⣄⠀⠀⠀⠀⡜⠁⠀⠀⠀⠀⠀⠀│
        -1 │⠊⢀⣀⠜⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⣀⣀⠜⠀⠀⠈⢦⣀⣠⠜⠀⠀⠀⠀⠀⠀⠀⠀│
           └────────────────────────────────────────┘
           -2                                       7
                               x%
```

- Congratulation! You've solved two-language problem.

# Appendix

- In this chapter, we would like test out NEW PackageCompiler.jl can support ARM devices e.g. Raspberry Pi3 or Jetson nano.

## Let's test out (For Raspberry Pi3)

- If you do not have a Raspberry Pi3, you can run environment on Docker.
- We've used Docker image terasakisatoshi/jlcross:rpi3-v1.3.1
  - See DockerHub https://hub.docker.com/r/terasakisatoshi/jlcross
  - Dockerfile can be found at https://github.com/Julia-Embedded/jlcross
- The follwing command build binary for Raspberry Pi3, it takes a few hours to get it.

```shell
#!/bin/bash

# Script for Raspberry Pi 3
# https://hub.docker.com/layers/julia/library/julia/latest/images/sha256-1bfe9380ebd44f7fd18c3290a71e25f6278faa39c77562e1b18d3e9b119c7732
JL_ARMV7=terasakisatoshi/jlcross:rpi3-v1.3.1
# Run make clean to reset host environment
make clean
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work ${JL_ARMV7} julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildrpi3 -v ${PWD}:/work -w /work ${JL_ARMV7} make build
# Test to run binary on other environments that does not have Julia environment
docker run --rm -it -v ${PWD}:/work -w /work balenalib/raspberrypi3:buster-run-20191106 build/bin/HelloX
```

- You'll see the following result:

```console
rm -rf build
rm -f HelloX/Manifest.toml
Julia Version 1.3.1
Commit 2d57411 (2019-12-30 21:36 UTC)
Platform Info:
  OS: Linux (arm-linux-gnueabihf)
  CPU: Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz
  WORD_SIZE: 32
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, armv7-a)
julia --project=. -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/JuliaLang/PackageCompiler.jl",rev="master"))'
   Cloning git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
  Updating git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
  Updating git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
   Cloning default registries into `~/.julia`
   Cloning registry from "https://github.com/JuliaRegistries/General.git"
     Added registry `General` to `~/.julia/registries/General`
 Resolving package versions...
 Installed Missings ─────────── v0.4.3
 Installed SortingAlgorithms ── v0.3.1
 Installed DataAPI ──────────── v1.1.0
 Installed Example ──────────── v0.5.3
 Installed OrderedCollections ─ v1.1.0
 Installed DataStructures ───── v0.17.9
 Installed StatsBase ────────── v0.32.0
 Installed UnicodePlots ─────── v1.1.0
  Updating `/work/Project.toml`
 [no changes]
  Updating `/work/Manifest.toml`
 [no changes]
julia --project=. -e 'using Pkg; Pkg.instantiate()'
julia --project=. build.jl
[ Info: PackageCompiler: creating base system image (incremental=false)...
[ Info: PackageCompiler: creating system image object file, this might take a while...
[ Info: PackageCompiler: creating system image object file, this might take a while...
ARGS = String[]
Base.PROGRAM_FILE = "/work/build/bin/HelloX"
Hello World from HelloX.jl
Hello, World from Example.jl
           ┌────────────────────────────────────────┐
         1 │⠀⠀⠀⠀⠀⠀⢀⠖⢹⠉⢢⠀⠀⢀⠞⠉⠉⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠉⠀⠀⢀│ cos(x)
           │⠀⠀⠀⠀⠀⢠⠊⠀⢸⠀⠀⠳⣠⠊⠀⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⢀⡠⠒⠁│ sin(x)
           │⠀⠀⠀⠀⢀⠇⠀⠀⢸⠀⠀⢠⢷⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢇⡠⠒⠁⠀⠀⠀│ line
           │⠀⠀⠀⠀⡜⠀⠀⠀⢸⠀⠀⡜⠀⢧⠀⠀⠀⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⡞⠁⠀⠀⠀⠀⠀⠀│
           │⠀⠀⠀⢸⠀⠀⠀⠀⢸⠀⢸⠀⠀⠘⡄⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⢀⡠⠒⠁⡸⠀⠀⠀⠀⠀⠀⠀⠀│
           │⠀⠀⢀⠇⠀⠀⠀⠀⢸⢀⠇⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⢱⠀⠀⢀⡠⠒⠁⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀│
           │⠀⠀⡜⠀⠀⠀⠀⠀⢸⡜⠀⠀⠀⠀⠈⡆⠀⠀⠀⠀⠀⢈⡦⠒⠁⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀│
   f(x)    │⠤⠤⠧⠤⠤⠤⠤⠤⢼⠧⠤⠤⠤⠤⠤⠼⡤⠤⠤⡤⠴⠥⠼⡤⠤⠤⠤⠤⠤⢴⠥⠤⠤⠤⠤⠤⢤⠤⠤⠤│
           │⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⣣⠔⠉⠀⠀⠀⠀⢣⠀⠀⠀⠀⢀⠇⠀⠀⠀⠀⠀⢀⠇⠀⠀⠀│
           │⠀⠀⠀⠀⠀⠀⠀⡸⢸⠀⠀⠀⠀⡠⠔⠉⠈⡆⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀│
           │⠀⠀⠀⠀⠀⠀⢀⠇⢸⠀⡠⠔⠉⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⢱⠀⠀⢠⠃⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀│
           │⠀⠀⠀⠀⠀⠀⡞⡠⢼⠉⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⢇⠀⡞⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀│
           │⠀⠀⠀⠀⡠⡼⠉⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⠀⠘⡾⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀│
           │⠀⡠⠔⠉⡰⠁⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⠀⠀⠀⠀⡜⠙⣄⠀⠀⠀⠀⡜⠁⠀⠀⠀⠀⠀⠀│
        -1 │⠊⢀⣀⠜⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⣀⣀⠜⠀⠀⠈⢦⣀⣠⠜⠀⠀⠀⠀⠀⠀⠀⠀│
           └────────────────────────────────────────┘
           -2                                       7
                               x%
```

Perfect!!! you can reproduce our result via `rpi3.sh`, `aarch64.sh` or `rpizero.sh`
