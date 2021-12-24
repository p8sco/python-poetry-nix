{ sources ? import ./nix/sources.nix { } }:

let
  pkgs = import sources.nixpkgs { };

  # Builds the python env based on ../pyproject.toml 
  pythonEnv = pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ./.;
    python = pkgs.python39;
  };
in pkgs.mkShell {
  buildInputs = [ pythonEnv pkgs.poetry ];
  shellHook = ''
    echo Hello
  '';
}
