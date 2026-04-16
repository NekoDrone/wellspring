{
  imports = [
    ./sddm.nix
    ./xserver.nix
    ./flatpak.nix
    ./misc.nix
  ];

  services = {
    ratbagd.enable = true;
    qbittorrent.enable = true;
  };
}
