{ hello-np-npm ? { outPath = ./.; name = "hello-np-npm"; }
, pkgs ? import <nixpkgs> {}
}:
let
  nodePackages = import "${pkgs.path}/pkgs/top-level/node-packages.nix" {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./versions.nix;
  };
in rec {
  tarball = pkgs.runCommand "hello-np-npm-1.0.0.tgz" { buildInputs = [ pkgs.nodejs ]; } ''
    mv `HOME=$PWD npm pack ${hello-np-npm}` $out
  '';
  build = nodePackages.buildNodePackage {
    name = "hello-np-npm-1.0.0";
    src = [ tarball ];
    buildInputs = nodePackages.nativeDeps."hello-np-npm" or [];
    deps = [ nodePackages.by-spec."left-pad".">= 1.0.0" ];
    peerDependencies = [];
  };
}