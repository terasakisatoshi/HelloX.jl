def main(ctx):
  pipelines = []
  pipelines.append(pipeline("arm64", "1.4"))
  pipelines.append(pipeline("arm", "1.4.1"))
  return pipelines

def pipeline(arch, julia):
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": "Julia %s - %s" % (julia, arch),
    "platform": {
      "os": "linux",
      "arch": arch,
    },
    "steps": [
      {
        "name": "test",
        "image": "julia:%s" % julia,
        "commands": [
          "apt-get update && apt-get install -y build-essential",
          "julia -e 'using InteractiveUtils; versioninfo()'",
          "julia -e 'using Pkg; Pkg.add(\"PackageCompiler\")'",
          "julia --project=@. -e 'using Pkg; Pkg.instantiate(); Pkg.build(); include(\"build.jl\")'",
          "./build/bin/HelloX",
        ],
      },
    ],
  }
