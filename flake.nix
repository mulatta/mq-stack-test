{
  inputs.nixpkgs.url = "git+https://github.com/mulatta/nixpkgs?ref=main&rev=fca989885876d9836a901fae0bd341a7f647baab&shallow=1";
  outputs =
    { nixpkgs, ... }:
    {
      # Slow on purpose: keeps this PR's CI pending while the PR above is green.
      checks.x86_64-linux.ok = nixpkgs.legacyPackages.x86_64-linux.runCommand "ok" { } ''
        sleep 420
        touch $out
      '';
    };
}
