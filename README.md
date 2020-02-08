# HelloX.jl

- Hello World Application that will be compiled via [PackageCompilerX.jl](https://github.com/JuliaComputing/PackageCompilerX.jl)
- PackageCompilerX.jl has a feature that creates "apps" which are a bundle of files including an executable that can be sent and run on other machines without Julia being installed on that machine.
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

- In this section, let's see `PackageCompilerX.jl` will generate a binary that runs on other machines without Julia being installed on that machine.

### Run build script

- `make build` command will compile our Julia package that is `HelloX`. This command is equivalent to:

```console
$ julia -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/KristofferC/PackageCompilerX.jl.git",rev="master"))'
$ julia --startup-file=no --project=. -e 'using Pkg; Pkg.instantiate()'
$ julia build.jl
```

- The output should be

```console
$ make build
julia -e 'using Pkg; Pkg.add(PackageSpec(url="https://github.com/KristofferC/PackageCompilerX.jl.git",rev="master"))'
  Updating registry at `~/.julia/registries/General`
  Updating git-repo `https://github.com/JuliaRegistries/General.git`
  Updating git-repo `https://github.com/KristofferC/PackageCompilerX.jl.git`
  Updating git-repo `https://github.com/KristofferC/PackageCompilerX.jl.git`
 Resolving package versions...
  Updating `~/.julia/environments/v1.3/Project.toml`
 [no changes]
  Updating `~/.julia/environments/v1.3/Manifest.toml`
 [no changes]
julia --startup-file=no --project=. -e 'using Pkg; Pkg.instantiate()'
julia build.jl
[ Info: PackageCompilerX: creating base system image (incremental=false)...
[ Info: PackageCompilerX: creating system image object file, this might take a while...
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

- In this chapter, we would like test out our binary runs on ARM devices e.g. Raspberry Pi3.
- Although Julia provides 32-bit (ARMv7-a hard float), its [tiers is 2](https://julialang.org/downloads/), that is:
> Tier 2: Julia is guaranteed to build from source using the default build options, but may or may not pass all tests. Official binaries are available on a case-by-case basis.
>
>(Taken fromCurrently supported platforms)

- This means some Julia Packages do not support/consider for ARM environment devices. PacakgeCompiler.jl and PackageCompilerX.jl are not exception to this. If you like to test out `HelloX.jl` on Raspberry Pi3, we need apply a patch for our purpose.


## Modify Code

- In this section, we would like modify a source code to deal with Raspberry Pi3 matters.
- The following snippet code is taken from https://github.com/JuliaComputing/PackageCompilerX.jl/blob/master/src/PackageCompilerX.jl:

```julia:PacakgeCompilerX.jl
const NATIVE_CPU_TARGET = "native"
const APP_CPU_TARGET = "generic;sandybridge,-xsaveopt,clone_all;haswell,-rdrnd,base(1)"

current_process_sysimage_path() = unsafe_string(Base.JLOptions().image_file)

all_stdlibs() = readdir(Sys.STDLIB)

yesno(b::Bool) = b ? "yes" : "no"
bitflag() = Int == Int32 ? `-m32` : `-m64`
march() = (Int == Int32 ? `-march=pentium4` : ``)
```

- Since gcc command for Raspberry Pi3 does not have `-m32` option, we also need extract code depends os `bitflag()`.
- Replace `APP_CPU_CONSTANT` with `APP_CPU_TARGET = "generic;cortex-a53"`
  - I'm not sure it is correct, but it works on my environment
- Replace `-march=pentium4` with `-march=armv7-a`

- The following snippet should work for our purpose.

```
const NATIVE_CPU_TARGET = "native"
const APP_CPU_TARGET = "generic;cortex-a53"

current_process_sysimage_path() = unsafe_string(Base.JLOptions().image_file)

all_stdlibs() = readdir(Sys.STDLIB)

yesno(b::Bool) = b ? "yes" : "no"
march() = (Int == Int32 ? `-march=armv7-a` : ``)
```

- See [my arm branch from PacakgeCompilerX.jl project](https://github.com/terasakisatoshi/PackageCompilerX.jl/tree/arm) which is applied by a patch above.

## Let's test out

- If you do not have a Raspberry Pi3, you can run environment on Docker.
- We've used Docker image terasakisatoshi/jlcross:rpi3-v1.3.1
  - See DockerHub https://hub.docker.com/r/terasakisatoshi/jlcross
  - Dockerfile can be found at https://github.com/Julia-Embedded/jlcross
- The follwing command build binary for Raspberry Pi3, it takes a few hours to get it.

```shell
# Script for Raspberry Pi 3
# Run make clean to reset host environment
make clean
# Check Julia version
docker run --rm -it --name versioncheck -v ${PWD}:/work -w /work terasakisatoshi/jlcross:rpi3-v1.3.1 julia -e "using InteractiveUtils; versioninfo()"
# Build executable which will be stored under a directory named `build`
docker run --rm -it --name buildrpi3 -v ${PWD}:/work -w /work terasakisatoshi/jlcross:rpi3-v1.3.1 make rpi3
# Test to run binary on other environments that does not have Julia environment
docker run --rm -it -v ${PWD}:/work -w /work FROM balenalib/raspberrypi3:buster-run-20191106 build/bin/HelloX
```

```console
20191106 build/bin/HelloX
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

Yes, you're good to go.
