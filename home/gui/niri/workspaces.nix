{

  programs.niri = {
    settings = {
      workspaces = {
        # ── DP-4 ──
        "11-main" = {
          name = "main_dp";
          open-on-output = "DP-1";
        };

        # ── HDMI-A-2 ──
        "21-music" = {
          name = "music";
          open-on-output = "HDMI-A-1";
        };
        "22-main" = {
          name = "main_hdmi";
          open-on-output = "HDMI-A-1";
        };
        "23-comms" = {
          name = "comms";
          open-on-output = "HDMI-A-1";
        };
      };
    };
  };
}
