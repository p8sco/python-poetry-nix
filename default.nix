{ sources ? import ./nix/sources.nix { } }:

let pkgs = import sources.nixpkgs { };
in pkgs.poetry2nix.mkPoetryApplication {
  projectDir = ./.;
  python = pkgs.python38;
}
