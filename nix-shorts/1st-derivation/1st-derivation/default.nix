{pkgs ? import <nixpkgs> {}}:

pkgs.stdenv.mkDerivation {
  name = "basic-derivation";
  src = ./src;

  installPhase = ''
    mkdir $out
    cp -rv $src/* $out
  '';
}
