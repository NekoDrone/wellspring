{
  imports = [
    ./services
    ./sops.nix
    ./hardware.nix
    ./boot.nix
    ./programs
  ];

  environment.pathsToLink = [ "/share/zsh" ];
}
