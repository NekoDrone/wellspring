{
  imports = [
    ./sddm.nix
    ./xserver.nix
    ./flatpak.nix
    ./misc.nix
  ];

  services = {
    ratbagd.enable = true;
    xserver.xkb = {
      layout = "us";
      variant = "";
    };
    blueman.enable = true;
  };
}
