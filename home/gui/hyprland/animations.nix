{
  wayland.windowManager = {
    hyprland = {
      settings = {
        animations = {
          enabled = true;
          bezier = "overshot, 0.05, 0.9, 0.1, 1.1";
          animation = [
            "windowsIn, 1, 1.5, overshot, slide"
            "windowsOut, 1, 1.5, default, popin 80%"
	    "windowsMove, 1, 1.5, default, slide"
            "border, 1, 1.5, default"
            "workspacesIn, 1, 3, overshot, slide"
            "workspacesOut, 1, 3, overshot, slidefade 80%"
          ];
        };
      };
    };
  };
}
