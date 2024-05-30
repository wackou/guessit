{pkgs ? import <nixpkgs> {}}: let
  python = pkgs.python312.withPackages (ps:
    with ps; [
    rebulk
    babelfish
    python-dateutil
    pytest
    pytest-mock
    pytest-benchmark
    pytest-cov
    pylint
    pyyaml
    ]);
in
  pkgs.mkShell {
    packages = [
      python
    ];
  }
