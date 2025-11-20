{
  imports = [
    ./monitors.nix
    ./bind.nix
    ./animations.nix
    ./decoration.nix
    ./borders.nix
  ];
  wayland.windowManager = {
    hyprland = {
      enable = true;
      package = null;
      portalPackage = null;
    };
  };
}
