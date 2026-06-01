{
  config,
  pkgs,
  lib,
  ...
}:
{

  programs.niri = {
    settings = {
      xwayland-satellite = {
        enable = true;
        path = lib.getExe pkgs.xwayland-satellite;
      };
      binds = with config.lib.niri.actions; {
        "Mod+Return".action = spawn "ghostty";
        "Mod+Space".action = spawn "vicinae" "toggle";
        "Mod+Q".action = close-window;
        "Mod+Y".action = fullscreen-window;
        "Mod+Shift+Y".action.set-column-width = "75%";
        "Mod+Shift+X".action.screenshot = { };

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
      spawn-at-startup = [
        {
          command = [
            "vicinae"
            "server"
          ];
        }
        {
          command = [
            "sh"
            "-c"
            "while ! busctl --user status org.gnome.Mutter.ScreenCast >/dev/null 2>&1; do sleep 0.2; done; systemctl --user restart xdg-desktop-portal-gnome.service"
          ];
        }
        {
          command = [
            "dbus-update-activation-environment"
            "--systemd"
            "WAYLAND_DISPLAY"
            "XDG_CURRENT_DESKTOP"
            "NIX_XDG_DESKTOP_PORTAL_DIR"
          ];
        }
      ];
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
