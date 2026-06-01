{

  programs.niri = {
    settings = {
      outputs = {
        "DP-1" = {
          focus-at-startup = true;
          position = {
            x = 0;
            y = 0;
          };
          mode = {
            width = 2560;
            height = 1440;
            refresh = 180.002;
          };
        };
        "HDMI-A-1" = {
          position = {
            x = 2560;
            y = 180;
          };
          mode = {
            width = 1920;
            height = 1080;
            refresh = 119.982;
          };
        };
      };
    };
  };
}
