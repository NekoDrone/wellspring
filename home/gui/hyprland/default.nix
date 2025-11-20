{
  imports = [
    ./monitors.nix
    ./bind.nix
    ./animations.nix
    ./decoration.nix
  ];
  wayland.windowManager = {
    hyprland = {
      enable = true;
      package = null;
      portalPackage = null;
    };
  };
}
