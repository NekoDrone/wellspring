{ pkgs, config, ... }:
{
  gtk = {
    gtk4.theme = config.gtk.theme;
    enable = true;

    theme = {
      package = pkgs.whitesur-gtk-theme;
      name = "WhiteSur";
    };

    iconTheme = {
      package = pkgs.whitesur-icon-theme;
      name = "WhiteSur";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}
