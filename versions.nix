{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."left-pad".">= 1.0.0" =
    self.by-version."left-pad"."1.1.3";
  by-version."left-pad"."1.1.3" = self.buildNodePackage {
    name = "left-pad-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/left-pad/-/left-pad-1.1.3.tgz";
      name = "left-pad-1.1.3.tgz";
      sha1 = "612f61c033f3a9e08e939f1caebeea41b6f3199a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "left-pad" = self.by-version."left-pad"."1.1.3";
}
