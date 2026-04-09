{
  imports = [
    ./services
    ./sops.nix
    ./hardware.nix
    ./boot.nix
    ./networking.nix
    ./programs
  ];

  environment.pathsToLink = [ "/share/zsh" ];
}
