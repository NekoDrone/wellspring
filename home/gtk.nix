{ pkgs, config, ... }:
{
  gtk = {
    gtk4.theme = config.gtk.theme;
    enable = true;

    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Grey-Darkest";
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
