{
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./autostart.nix
    ./binds.nix
    ./decorations.nix
    ./input.nix
    ./layers.nix
    ./layout.nix
    ./misc.nix
    ./monitors.nix
    ./windows.nix
    ./workspaces.nix
  ];

  programs.niri = {
    settings = {
      prefer-no-csd = true;
      xwayland-satellite = {
        enable = true;
        path = lib.getExe pkgs.xwayland-satellite;
      };
    };
  };
}
