# HelloX.jl

- Drone CI [![Build Status](https://cloud.drone.io/api/badges/terasakisatoshi/HelloX.jl/status.svg)](https://cloud.drone.io/terasakisatoshi/HelloX.jl)

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
- We've confirmed our Application works for Julia v1.3.1 and v1.4.0
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
$ julia --project=. -e 'using Pkg; Pkg.add("PackageCompiler")'
$ julia --project=. -e 'using Pkg; Pkg.instantiate()'
$ julia --project=. build.jl
$ ./build/bin/HelloX
```

- The output should be
- You'll find a `build` directory is generated. It contains build binary exactly what we want.

```console
$ make build
docker build -t hellox -f docker/Dockerfile .
Sending build context to Docker daemon  490.5kB
Step 1/2 : from julia:1.4.0
 ---> 7f4dea58d9da
Step 2/2 : RUN apt-get update && apt-get install -y build-essential
 ---> Using cache
 ---> 7f84df917380
Successfully built 7f84df917380
Successfully tagged hellox:latest
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildHelloX -v /Users/terasaki/work/HelloX.jl:/work -w /work hellox julia --project=/work -e 'using Pkg; Pkg.instantiate(); include("/work/build.jl")'
    Cloning default registries into `~/.julia`
    Cloning registry from "https://github.com/JuliaRegistries/General.git"
      Added registry `General` to `~/.julia/registries/General`
    Cloning git-repo `https://github.com/JuliaLang/PackageCompiler.jl`
  Installed Missings ─────────── v0.4.3
  Installed DataAPI ──────────── v1.1.0
  Installed SortingAlgorithms ── v0.3.1
  Installed Example ──────────── v0.5.3
  Installed OrderedCollections ─ v1.1.0
  Installed DataStructures ───── v0.17.10
  Installed StatsBase ────────── v0.32.2
  Installed UnicodePlots ─────── v1.1.0
┌ Warning: ImageCore has a dependency on Requires.jl, code in `@require` will not be run
└ @ PackageCompiler ~/.julia/packages/PackageCompiler/J966b/src/PackageCompiler.jl:510
┌ Warning: VideoIO has a dependency on Requires.jl, code in `@require` will not be run
└ @ PackageCompiler ~/.julia/packages/PackageCompiler/J966b/src/PackageCompiler.jl:510
[ Info: PackageCompiler: creating base system image (incremental=false)...
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
- We've used Docker image `terasakisatoshi/jlcross:rpi3-v1.3.1` and `terasakisatoshi/jlcross:rpi3-v1.4.0`
  - See DockerHub https://hub.docker.com/r/terasakisatoshi/jlcross
  - Dockerfile can be found at https://github.com/Julia-Embedded/jlcross
- The follwing command build binary for Raspberry Pi3, it takes a few hours to get it.

```shell
$ make rpi3
$ build_rpi3
```

- You can reproduce another arch result via `make rpizero` and `make aarch64`
