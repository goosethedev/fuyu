{
  description = "General NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;

      config = {
        allowUnfree = true;
      };
    };
  in {

    nixosConfigurations = {
      daydream = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit system; };

        modules = [
          ./hosts/daydream.nix
        ];
      };
      dashbox = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit system; };

        modules = [
          ./hosts/dashbox.nix
        ];
      };
      darknite = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit system; };

        modules = [
          ./hosts/darknite
        ];
      };
    };

  };
}
