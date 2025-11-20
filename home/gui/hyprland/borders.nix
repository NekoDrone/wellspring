{ colorscheme, ... }:
{
  wayland.windowManager.hyprland.settings.general = {
    border_size = 2;
    no_border_on_floating = true;
    "col.active_border" = colorscheme.hexToARGB colorscheme.mauve;
    "col.inactive_border" = colorscheme.hexToARGB colorscheme.base;
  };
}
