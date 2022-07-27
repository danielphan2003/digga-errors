{self, inputs, lib, ...}: {
  hostDefaults = {
    system = "x86_64-linux";
    channelName = "nixpkgs";
    modules = [inputs.home.nixosModules.home-manager];
  };
  hosts = {
    NixOS = {
      modules = self.lib.myThrow "from ${self}/nixos.nix";
    };
  };
}

