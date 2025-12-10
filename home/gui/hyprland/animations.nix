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
	    "layers, 1, 1.5, overshot, slide"
	    "layersOut, 1, 1.5, default, popin 80%"
	    "fade, 1, 2, default"
            "border, 1, 4, default"
            "workspaces, 1, 3, overshot, slide"
            "workspacesOut, 1, 3, overshot, slidefade 80%"
          ];
        };
      };
    };
  };
}
