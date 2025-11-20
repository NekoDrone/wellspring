{
  wayland.windowManager = {
    hyprland = {
      settings = {
        animations = {
          enabled = true;
          bezier = "overshot, 0.13, 0.99, 0.29, 1.1";
          animation = [
            "windowsIn, 1, 4, overshot, slide"
            "windowsOut, 1, 5, default, popin 80%"
            "border, 1, 5, default"
            "workspacesIn, 1, 6, overshot, slide"
            "workspacesOut, 1, 6, overshot, slidefade 80%"
          ];
        };
      };
    };
  };
}
