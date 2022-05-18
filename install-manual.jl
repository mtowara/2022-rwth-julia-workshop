using Pkg
println("Activating environment in $(pwd())...")
Pkg.activate(".")
println("Installing packages...")
flush(stdout)
Pkg.instantiate()
Pkg.precompile()

path = pwd()
@info "That's it. Start the notebook server with 'using IJulia; notebook(dir=\"$path")' ..."
