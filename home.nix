{self, ...}: {
  modules = self.lib.myThrow "from ${self}/home.nix";
}

