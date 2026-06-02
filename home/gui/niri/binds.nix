{
  config,
  ...
}:
{
  programs.niri = {
    settings = {
      binds = with config.lib.niri.actions; {
        "Mod+Return".action = spawn "ghostty";
        "Mod+Space".action = spawn "vicinae" "toggle";
        "Mod+Q".action = close-window;
        "Mod+Y".action = fullscreen-window;
        "Mod+Shift+Y".action.set-column-width = "90%";
        "Mod+F".action = fullscreen-window;
        "Mod+Shift+F".action.set-column-width = "90%";
        "Mod+Shift+X".action.screenshot = { };
        "Mod+V".action = toggle-overview;

        ## Move
        "Mod+Shift+Left".action = move-window-to-monitor-left;
        "Mod+Shift+Right".action = move-window-to-monitor-right;
        # move the focused column along the strip (rearranging on the same monitor)
        "Mod+Shift+A".action = move-column-left;
        "Mod+Shift+D".action = move-column-right;

        # send a window up/down to another workspace (niri's vertical "spaces")
        "Mod+Shift+S".action = move-column-to-workspace-down;
        "Mod+Shift+W".action = move-column-to-workspace-up;

        ## Focus
        # windows — along the horizontal strip
        "Mod+A".action = focus-column-left;
        "Mod+D".action = focus-column-right;

        # monitors
        "Mod+Left".action = focus-monitor-left;
        "Mod+Right".action = focus-monitor-right;

        # workspaces — the vertical stack
        "Mod+W".action = focus-workspace-up;
        "Mod+S".action = focus-workspace-down;
      };
    };
  };
}
