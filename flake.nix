{
  description = "Share screenshots and your clipboard";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system: rec {
      packages = {
        thingshare = nixpkgs.legacyPackages.${system}.callPackage ./thingshare.nix { };
      };
      defaultPackage = packages.thingshare;
    });
}
