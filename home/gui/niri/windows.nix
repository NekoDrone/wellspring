{

  programs.niri = {
    settings = {
      window-rules = [
        # HDMI-A-2 / ws "spotify"
        {
          matches = [
            {
              app-id = "^Spotify$";
              at-startup = true;
            }
          ];
          open-on-workspace = "music";
          open-focused = false;
        }

        # HDMI-A-2 / ws "zen"
        {
          matches = [
            {
              app-id = "^zen-beta$";
              at-startup = true;
            }
          ];
          open-on-workspace = "main_hdmi";
          open-focused = false;
        }

        # HDMI-A-2 / ws "chat"  (two apps → two rules, same workspace)
        {
          matches = [
            {
              app-id = "^signal$";
              at-startup = true;
            }
          ];
          open-on-workspace = "comms";
          open-focused = false;
        }
        {
          matches = [
            {
              app-id = "^vesktop$";
              at-startup = true;
            }
          ];
          open-on-workspace = "comms";
          open-focused = false;
        }

        # DP-4 / ws "term"
        {
          matches = [
            {
              app-id = "^com\\.mitchellh\\.ghostty$";
              at-startup = true;
            }
          ];
          open-on-workspace = "main_dp";
          open-focused = false;
        }

        # non-focused 75% opacity
        {
          matches = [ { is-focused = false; } ];
          opacity = 0.95;
        }

        # ghostty 90% opacity when selected
        {
          matches = [
            {
              app-id = "^com\\.mitchellh\\.ghostty$";
              is-focused = true;
            }
          ];
          opacity = 0.98;
        }

        # vicinae launcher: runs as a regular floating window (not layer-shell)
        # so it gets the window-open/close animations. See home/gui/vicinae.nix.
        {
          matches = [ { app-id = "vicinae"; } ];
          open-floating = true;
          open-focused = true;
          border.enable = false;
          focus-ring.enable = false;
          clip-to-geometry = true;
          geometry-corner-radius =
            let
              r = 14.0;
            in
            {
              top-left = r;
              top-right = r;
              bottom-left = r;
              bottom-right = r;
            };
          shadow = {
            enable = true;
            softness = 40;
            spread = 6;
            offset = {
              x = 0;
              y = 10;
            };
            color = "#00000099";
          };
          background-effect.blur = true;
        }
      ];
    };
  };
}
