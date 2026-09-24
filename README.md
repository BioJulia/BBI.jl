# <img src="./docs/src/assets/logo.svg" width="30%" align="right" /> BBI.jl

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Latest Release](https://img.shields.io/github/release/BioJulia/BBI.jl.svg)](https://github.com/BioJulia/BBI.jl/releases/latest)
[![MIT license](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/BioJulia/BBI.jl/blob/master/LICENSE)
[![Stable documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://biojulia.github.io/BBI.jl/stable)
[![Latest documentation](https://img.shields.io/badge/docs-dev-blue.svg)](https://biojulia.github.io/BBI.jl/dev/)

> This project follows the [semver](http://semver.org) pro forma and uses the [git-flow branching model](https://nvie.com/posts/a-successful-git-branching-model/ "original blog post").

## Description
BBI.jl handles the shared parts of [bigWig.jl](https://github.com/BioJulia/bigWig.jl) and [bigBed.jl](https://github.com/BioJulia/bigBed.jl).

## Installation
The BBI package is bundled into the [bigWig](https://github.com/BioJulia/bigWig.jl) and [bigBed](https://github.com/BioJulia/bigBed.jl) packages, so you may not need to install this package explicitly.
However, if you do, BBI is made available to install through the [https://github.com/juliaregistries/General](General package registry).

You can install BBI from the [Julia REPL](https://docs.julialang.org/en/v1/manual/getting-started/).
Press `]` to enter [pkg mode](https://docs.julialang.org/en/v1/stdlib/Pkg/), then enter the following command:
```julia
add BBI
```

If you are interested in the cutting edge of the development, please check out the [develop branch](https://github.com/BioJulia/BBI.jl/tree/develop) to try new features before release.


## Testing
BBI is tested against Julia `1.X` on Linux, OS X, and Windows.

**Latest build status of the [develop branch](https://github.com/BioJulia/BBI.jl/tree/develop):**

[![Unit tests](https://github.com/BioJulia/BBI.jl/workflows/Unit%20tests/badge.svg?branch=develop)](https://github.com/BioJulia/BBI.jl/actions?query=workflow%3A%22Unit+tests%22+branch%3Adevelop)
[![Documentation](https://github.com/BioJulia/BBI.jl/workflows/Documentation/badge.svg?branch=develop)](https://github.com/BioJulia/BBI.jl/actions?query=workflow%3ADocumentation+branch%3Adevelop)
[![codecov](https://codecov.io/gh/BioJulia/BBI.jl/branch/develop/graph/badge.svg)](https://codecov.io/gh/BioJulia/BBI.jl)

## Contributing
We appreciate contributions from users, including reporting bugs, fixing issues, improving performance and adding new features.

See the [contributing files](https://github.com/BioJulia/Contributing) for detailed contributor and maintainer guidelines and the code of conduct.

## Questions?
If you have a question about contributing or using BioJulia software, join us on [the Julia Slack workspace](https://julialang.org/slack/), or visit the [Bio category on Julia Discourse](https://discourse.julialang.org/c/domain/bio).
