{
  outputs = _: {
    checks.x86_64-linux.ok = derivation {
      name = "ok";
      system = "x86_64-linux";
      builder = "/bin/sh";
      args = [ "-c" "echo ok > $out" ];
    };
  };
}
