{
  ...
}:
{
  programs.vesktop =
    let
      cfg = {
        light = {
          flavour = "mocha";
        };
        dark = {
          flavour = "mocha";
        };
        accent = "mauve";
      };
      themeName = "catppuccin-auto.theme";
    in
    {
      enable = true;
      vencord = {
        themes.${themeName} = ''
          /**
           * @name Catppuccin ${cfg.light.flavour}/${cfg.dark.flavour} (${cfg.accent})
           * @author Catppuccin
           * @description Soothing pastel theme for Discord
           * @website https://github.com/catppuccin/discord
          **/
          @import url("https://catppuccin.github.io/discord/dist/catppuccin-${cfg.dark.flavour}-${cfg.accent}.theme.css")
          (prefers-color-scheme: dark);
          @import url("https://catppuccin.github.io/discord/dist/catppuccin-${cfg.light.flavour}-${cfg.accent}.theme.css")
          (prefers-color-scheme: light);
        '';
        settings = {
          autoUpdate = true;
          autoUpdateNotification = false;
          notifyAboutUpdates = false;
          enabledThemes = [ "${themeName}.css" ];
          plugins = {
            BetterGifPicker = {
              enabled = true;
            };
            FavoriteGifSearch = {
              enabled = true;
            };
            CallTimer = {
              enabled = true;
            };
            WhoReacted = {
              enabled = true;
            };
          };
        };
      };
    };
}
