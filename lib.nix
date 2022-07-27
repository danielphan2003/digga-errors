{lib}:
lib.makeExtensible (self: rec {
  myOptionals = lib.optionals;
  myThrow = builtins.throw;
})

