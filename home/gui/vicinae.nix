{
  programs.vicinae = {
    enable = true;
    settings = {
      close_on_focus_loss = false;
      favicon_service = "twenty";
      font = {
        normal = {
          family = "Sans Serif";
          size = 10.5;
        };
      };
      pop_to_root_on_close = true;
      root_search = {
        search_files = false;
      };
      theme = {
        light = {
          name = "catppuccin-latte";
          icon_theme = "default";
        };
        dark = {
          name = "catppuccin-mocha";
          icon_theme = "default";
        };
      };
      launcher_window = {
        opacity = 0.95;
        rounding = 10;
      };
    };
  };
}
