{
  programs.niri = {
    settings = {
      layout = {
        border = {
          enable = true;
          width = 4;
          active.gradient = {
            from = "#91d7e3";
            to = "#cba6f7";
            angle = 45;
            in' = "oklch shorter hue";
          };
          inactive.color = "#1e1e2e";
        };
        focus-ring = {
          enable = false;
          width = 10000;
          active.color = "#00000055";
        };

        shadow.enable = true;

        tab-indicator = {
          position = "left";
          gap = 6;
          width = 5;
          gaps-between-tabs = 6;
          hide-when-single-tab = true;
          corner-radius = 8;
          inactive.color = "#1e1e2e";
        };
      };

      # rounding and background border ring
      window-rules = [
        {
          draw-border-with-background = false;
          geometry-corner-radius =
            let
              r = 8.0;
            in
            {
              top-left = r;
              top-right = r;
              bottom-left = r;
              bottom-right = r;
            };
          clip-to-geometry = true;
        }
      ];
    };
  };
}
