{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    # (discord.override {
    #   withMoonlight = true;
    #   moonlight = inputs.moonlight.packages.${pkgs.system}.moonlight;
    # })
    pavucontrol
    nwg-look
    signal-desktop
    cosmic-files
    vlc
    kdePackages.gwenview
    telegram-desktop
    heroic
  ];
}
