{ pkgs ? import <nixpkgs> { } }:

let pythonEnv = pkgs.poetry2nix.mkPoetryEnv { projectDir = ./.; };
in pkgs.mkShell { buildInputs = [ pythonEnv pkgs.poetry ]; }
