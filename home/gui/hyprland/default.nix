{
  imports = [
    ./monitors.nix
    ./bind.nix
    ./animations.nix
    ./decoration.nix
    ./borders.nix
    ./autostart.nix
    ./workspaces.nix
  ];

  wayland.windowManager = {
    hyprland = {
      enable = true;
      package = null;
      portalPackage = null;
    };
  };
}
