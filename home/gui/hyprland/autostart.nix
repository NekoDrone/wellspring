{
  wayland.windowManager = {
    hyprland = {
      settings = {
        exec-once = [
          "vicinae server"
        ];
        exec = [
          "gsettings set org.gnome.desktop.interface gtk-theme \"YOUR_DARK_GTK3_THEME\""
          "gsettings set org.gnome.desktop.interface color-scheme \"prefer-dark\""
        ];
      };
    };
  };
}
