{ pkgs, config, ... }:
{
  gtk = {
    enable = true;
    colorScheme = "dark";

    theme = {
      package = pkgs.whitesur-gtk-theme;
      name = "WhiteSur-Dark";
    };

    gtk4.theme = config.gtk.theme;

    iconTheme = {
      package = pkgs.whitesur-icon-theme;
      name = "WhiteSur";
    };

    font = {
      name = "Sans";
      size = 11;
    };

    gtk3.extraConfig = {
      gtk-cursor-blink = false;
    };

    gtk4.extraConfig = {
      gtk-cursor-blink = false;
    };
  };
}
