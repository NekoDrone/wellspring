{ pkgs, ... }:
{
  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-gnome
      ];
      config.niri = {
        default = [
          "gnome"
          "gtk"
        ];
        "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];
        "org.freedesktop.impl.portal.ScreenCast" = [ "gnome" ];
        "org.freedesktop.impl.portal.Screenshot" = [ "gnome" ];
        "org.freedesktop.impl.portal.RemoteDesktop" = [ "gnome" ];
      };
    };

    mime = {
      enable = true;
    };

    mimeApps = {
      enable = true;

      defaultApplications = {
        "application/pdf" = "org.kde.okular.desktop";
        "x-scheme-handler/http" = "zen-beta.desktop";
        "x-scheme-handler/https" = "zen-beta.desktop";
        "x-scheme-handler/chrome" = "zen-beta.desktop";
        "text/html" = "zen-beta.desktop";
        "application/x-extension-htm" = "zen-beta.desktop";
        "application/x-extension-html" = "zen-beta.desktop";
        "application/x-extension-shtml" = "zen-beta.desktop";
        "application/xhtml+xml" = "zen-beta.desktop";
        "application/x-extension-xhtml" = "zen-beta.desktop";
        "application/x-extension-xht" = "zen-beta.desktop";

        "x-scheme-handler/sgnl" = "signal.desktop";
        "x-scheme-handler/signalcaptcha" = "signal.desktop";

        "x-scheme-handler/tg" = "org.telegram.desktop.desktop";
        "x-scheme-handler/tonsite" = "org.telegram.desktop.desktop";

        "x-scheme-handler/discord-464069837237518357" = "discord-464069837237518357.desktop";
        "x-scheme-handler/discord" = "vesktop.desktop";

        "x-scheme-handler/claude-cli" = "claude-code-url-handler.desktop";
      };

      associations.added = {
        "x-scheme-handler/http" = "zen-beta.desktop";
        "x-scheme-handler/https" = "zen-beta.desktop";
        "x-scheme-handler/chrome" = "zen-beta.desktop";
        "x-scheme-handler/tg" = "org.telegram.desktop.desktop";
        "x-scheme-handler/tonsite" = "org.telegram.desktop.desktop";
        "x-scheme-handler/ckan" = "ckan-handler.desktop";
      };
    };
  };
}
