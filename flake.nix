{
  description = "Jamsjz Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    musnix  = { url = "github:musnix/musnix"; };
  };

  outputs = { self, nixpkgs,musnix, ... }@inputs: {
    nixosConfigurations."jj" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [ 
        musnix.nixosModules.musnix
        ./configuration.nix 
      ];
    };
  };
}
