{ pkgs, ... }:
rec {
  home.pointerCursor = {
    name = "Bibata-Modern-Classic";
    size = 24;

    gtk.enable = true;
    # x11.enable = true;

    package = pkgs.bibata-cursors;
  };

  # environment.sessionVariables = {
  #   "XCURSOR_THEME" = home.pointerCursor.name;
  #   "XCURSOR_SIZE" = home.pointerCursor.size;
  # };
}
