{
  programs.niri = {
    settings = {
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
    };
  };
}
