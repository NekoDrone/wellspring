{ pkgs, ... }:
{
  services = {
    gnome.gnome-keyring.enable = true;
    mullvad-vpn = {
      enable = true;
      package = pkgs.mullvad-vpn;
    };
  };
}
