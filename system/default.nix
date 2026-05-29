{
  imports = [
    ./services
    ./sops.nix
    ./hardware.nix
    ./boot.nix
    ./networking.nix
    ./fonts.nix
    ./pkgs.nix
    ./programs
  ];

  environment.pathsToLink = [
    "/share/zsh"
    "/share/applications"
    "/share/xdg-desktop-portal"
  ];
}
