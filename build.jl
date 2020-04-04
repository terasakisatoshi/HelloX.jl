using PackageCompiler

if !isdefined(Main, :builddir)
    builddir = "build"
end
create_app(".", builddir, force=true)

