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
    ./window_rules.nix
    ./workspaces.nix
    ./layout.nix
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
