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
