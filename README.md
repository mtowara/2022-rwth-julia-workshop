# Introduction to the Julia programming language

Material for the RWTH Julia workshop taking place on 17th and 18th February 2022, adapted for STCE retreat May 20th.

## Software and material
What you need for the workshop (quick overview):

- [Julia 1.7](https://julialang.org/downloads/)
- All other dependencies can be installed by the script mentioned below

### Getting Julia
For following the course you will need at least **Julia 1.7**.
Julia can be easily obtained in binary form from [Julia downloads](https://julialang.org/downloads/).

### Getting all the rest
To get the remaining files and dependencies
start up `julia` and in the resulting REPL shell,
copy and paste the following:

```julia
import Downloads
script = Downloads.download("https://raw.githubusercontent.com/mtowara/2022-rwth-julia-workshop/master/install.jl")
include(script)
```
This [downloads the install.jl script](https://raw.githubusercontent.com/mtowara/2022-rwth-julia-workshop/master/install.jl)
and runs it from julia.
Follow the instructions on the screen and start the Jupyter notebook server
with the command that will be printed.

As an alternative you can also also run the following commands manually
(this requires to have `git` and `julia` available from the commandline):
```
git clone https://github.com/mtowara/2022-rwth-julia-workshop
cd 2022-rwth-julia-workshop
julia install-manual.jl
```
If you want to restart the IJulia server at a later time, just re-run one of the installers or execute within the REPL:
```
cd 2022-rwth-julia-workshop
julia --project
julia> using IJulia; notebook()
```

If you want to start a REPL with the installed packages (they are not exported to the global Julia environment) start julia with the `--project` argument
```
cd 2022-rwth-julia-workshop
julia --project
```

### Firefox on recent Ubuntu
If your Firefox is a Snap package it can not load files from your local disk and you might get an "Access to the file was denied" error on startup of the Jupyter notebook.
Just cat the file it tried to load, e.g.
$HOME/.local/share/jupyter/runtime/nbserver-10397-open.html and look for a link which looks like this: http://localhost:8888/tree?token=cac0de6bc316a20e383bc29ff49e67451ad9b9fa004fd996
Copy this link into Firefox and Jupyter should load.
Can also be hacked away by changing use_redirect_file in .julia/conda/3/lib/python3.9/site-packages/notebook/notebookapp.py to False:
```
use_redirect_file = Bool(False, config=True)
```

### Troubleshooting
If you are facing issues, check out
the [great troubleshooting section](https://carstenbauer.github.io/WorkshopWizard.jl/dev/troubleshooting/)
from the WorkshopWizard package by Carsten Bauer (which `install.jl` is using).

### Check everything works
There is a section in the [00_Installation](00_Installation.ipynb) notebook
with a few quick commands to check everything works as expected.
Please run these **before the course**.

### Cleanup ###
If you are not a convert after this, just delete the .julia folder in your home directory :)
