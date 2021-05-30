{
  description = "Share screenshots and your clipboard";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachDefaultSystem (system: rec {
      packages = {
        thingshare = nixpkgs.legacyPackages.${system}.callPackage ./thingshare.nix { };
      };
      defaultPackage = packages.thingshare;
    });
}
