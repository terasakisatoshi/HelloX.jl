module HelloX
using Example
using UnicodePlots

greet() = print("Hello World!")

function julia_main()
    try
        real_main()
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end
    return 0
end

function moonbar()
    try
        print("\x1b[?25l") # hide cursor
        for i in 1:3
            for 🌝 ∈ '🌑':'🌘'
                sleep(0.1)
                print(🌝)
                print('\r')
            end
        end
    finally
        print("\x1b[?25h") # unhide cursor
    end
end

function real_main()
    @show ARGS
    @show Base.PROGRAM_FILE
    println("Hello World from HelloX.jl")
    println(Example.hello("World from Example.jl"))
    plt = lineplot([cos, sin], -π/2, 2π)
    plt = lineplot!(plt, -0.5, .2, name = "line")
    show(plt)
    println() # newline
    moonbar()
    return
end

if abspath(PROGRAM_FILE) == @__FILE__
    real_main()
end

end # module
