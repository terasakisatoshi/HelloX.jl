def main(ctx):
  pipelines = []
  for arch in ["arm", "arm64"]:
    for julia in ["1.3", "1.4"]:
      pipelines.append(pipeline(arch, julia))
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
          "julia --project=@. -e 'using Pkg; Pkg.instantiate(); Pkg.build(); include(\"build.jl\")'",
          "./build/bin/HelloX",
        ],
      },
    ],
  }
