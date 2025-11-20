{
  imports = [
    ./monitors.nix
    ./bind.nix
    ./animations.nix
  ];
  wayland.windowManager = {
    hyprland = {
      enable = true;
      package = null;
      portalPackage = null;
    };
  };
}
