using Pkg
Pkg.add(url="https://github.com/carstenbauer/WorkshopWizard.jl/")
using WorkshopWizard

if Sys.iswindows()
    path = joinpath(homedir(), "Desktop")
else
    path = pwd()
end
success = WorkshopWizard.install(;repo="https://github.com/mtowara/2022-rwth-julia-workshop",
                                  path,
                                  global_IJulia=true,
                                  auto_overwrite=false)

if success
    @info "That's it. Start the notebook server with 'using IJulia; notebook(dir=\"$path/2022-rwth-julia-workshop\")' ..."
end
