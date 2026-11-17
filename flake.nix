{
  inputs.nixpkgs.url = "git+https://github.com/mulatta/nixpkgs?ref=main&rev=fca989885876d9836a901fae0bd341a7f647baab&shallow=1";
  outputs =
    { nixpkgs, ... }:
    {
      # Slow and tied to the tree, so every merge result is really built.
      checks.x86_64-linux.ok = nixpkgs.legacyPackages.x86_64-linux.runCommand "ok" { src = ./.; } ''
        sleep 120
        touch $out
      '';
    };
}
