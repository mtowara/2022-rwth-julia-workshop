using Pkg
println("Activating environment in $(pwd())...")
Pkg.activate(".")
println("Installing packages...")
flush(stdout)
Pkg.instantiate()
Pkg.precompile()

using IJulia; notebook(dir=pwd()) # starts IJulia sever
