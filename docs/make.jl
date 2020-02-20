using Pkg
using Documenter, BBI

makedocs(
    format = Documenter.HTML(
        edit_link = "develop"
    ),
    modules = [BBI],
    sitename = "BBI.jl",
    pages = [
        "Home" => "index.md",
        "API Reference" => "man/api.md"
    ],
    authors = replace(join(Pkg.TOML.parsefile("Project.toml")["authors"], ", "), r" <.*?>" => "" ) * ", The BioJulia Organisation, and other contributors."
)
deploydocs(
    repo = "github.com/BioJulia/BBI.jl.git",
    devbranch = "develop",
    push_preview = true
)
