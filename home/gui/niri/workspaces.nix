{

  programs.niri = {
    settings = {
      workspaces = {
        # ── DP-4 ──
        "11-main" = {
          name = "main_dp";
          open-on-output = "PNP(AOC) Q24G4 27ZQ9HA002859";
        };

        # ── HDMI-A-2 ──
        "21-music" = {
          name = "music";
          open-on-output = "Acer Technologies KG251Q T8ZSG0018532";
        };
        "22-main" = {
          name = "main_hdmi";
          open-on-output = "Acer Technologies KG251Q T8ZSG0018532";
        };
        "23-comms" = {
          name = "comms";
          open-on-output = "Acer Technologies KG251Q T8ZSG0018532";
        };
      };
    };
  };
}
