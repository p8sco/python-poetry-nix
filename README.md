# Python + Poetry + Nix

This project uses [niv](https://github.com/nmattia/niv) to manage nixpkgs using the branch `nixpkgs-unstable` in order to use `python38Packages` such as `python38Packages.poetry-core`.

```
niv init
```

```
niv modify nixpkgs -a branch=nixpkgs-unstable
```

And [poetry2nix](https://github.com/nix-community/poetry2nix) to convert poetry `pyproject.toml` and `poetry.lock` files into nix packages.
