{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  inputs.home.url = "github:nix-community/home-manager/release-22.05";
  inputs.digga.url = "github:divnix/digga";
  outputs = {self, digga, nixpkgs, ...}@inputs:
    digga.lib.mkFlake {
      inherit self inputs;
      channels.nixpkgs = {};
      lib = import ./lib.nix {lib = digga.lib // nixpkgs.lib;};
      home = ./home.nix;
      nixos = ./nixos.nix;
      homeConfigurations = digga.lib.mkHomeConfigurations self.nixosConfigurations;
    };
}
