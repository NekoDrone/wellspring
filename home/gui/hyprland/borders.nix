{ colorscheme, ... }:
{
  wayland.windowManager.hyprland.settings.general = {
    border_size = 2;
    "col.active_border" = colorscheme.hexToARGB colorscheme.mauve;
    "col.inactive_border" = colorscheme.hexToARGB colorscheme.base;
  };
}
