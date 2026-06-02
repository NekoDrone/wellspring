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
              app-id = "^vesktop$";
              at-startup = true;
            }
          ];
          open-on-workspace = "comms";
          open-focused = false;
        }
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
	  open-fullscreen = true;
        }
      ];
    };
  };
}
