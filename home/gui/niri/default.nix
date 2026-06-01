{
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./autostart.nix
    ./binds.nix
    ./monitors.nix
  ];

  programs.niri = {
    settings = {
      xwayland-satellite = {
        enable = true;
        path = lib.getExe pkgs.xwayland-satellite;
      };
    };
  };
}
