{
  inputs.nixpkgs.url = "git+https://github.com/mulatta/nixpkgs?ref=main&rev=fca989885876d9836a901fae0bd341a7f647baab&shallow=1";
  outputs =
    { nixpkgs, ... }:
    {
      # Fast.
      checks.x86_64-linux.ok = nixpkgs.legacyPackages.x86_64-linux.runCommand "ok" { } ''
        sleep 1
        touch $out
      '';
    };
}
