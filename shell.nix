{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShellNoCC {
  shellHook = ''
    git lfs install --local
    git lfs fetch
    git lfs checkout
  '';
  packages = with pkgs; [
    git-lfs
  ];
}
