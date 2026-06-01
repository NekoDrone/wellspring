{ config, ... }:

{
  home.username = "serenity";
  home.homeDirectory = "/home/serenity";

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  programs = {
    firefox = {
      enable = true;
      configPath = "${config.xdg.configHome}/mozilla/firefox";
    };
  };

  imports = [
    ./gui
    ./cli
    ./apps
    ./packages.nix
    ./flatpaks.nix
    ./fonts
    ./services
    ./cursor.nix
    ./wallpaper.nix
    ./gtk.nix
    ./nixpkgs.nix
    ./xdg.nix
  ];
}
