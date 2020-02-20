## Description
BBI handles the shared parts of [bigWig.jl](https://github.com/BioJulia/bigWig.jl) and [bigBed.jl](https://github.com/BioJulia/bigBed.jl).

## Installation
`BBI` is bundled into the [bigWig.jl](https://github.com/BioJulia/bigWig.jl) and [bigBed.jl](https://github.com/BioJulia/bigBed.jl) packages, so you may not need to install this package explicitly.
However, if you do, `BBI` is made available to install through BioJulia's package registry.
By default, Julia's package manager only uses the "General" package registry.
Your Julia configuration needs to include the BioJulia registry to be able to install the latest version of `BBI`.

To add the BioJulia registry from the [Julia REPL](https://docs.julialang.org/en/v1/manual/getting-started/), press `]` to enter [pkg mode](https://docs.julialang.org/en/v1/stdlib/Pkg/), then enter the following command:
```julia
registry add https://github.com/BioJulia/BioJuliaRegistry.git
```

After adding the registry to your configuration, you can install `BBI` while in [pkg mode](https://docs.julialang.org/en/v1/stdlib/Pkg/) with the following:
```julia
add BBI
```

If you are interested in the cutting edge of the development, please check out the [develop branch](https://github.com/BioJulia/BBI.jl/tree/develop) to try new features before release.
