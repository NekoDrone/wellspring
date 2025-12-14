{ config, pkgs, ... }:

{
  home.username = "serenity";
  home.homeDirectory = "/home/serenity";

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  programs = {
    firefox = {
      enable = true;
    };
  };

  imports = [
    ./gui
    ./cli
    ./apps
    ./packages.nix
    ./fonts
    ./terminal
    ./services
    ./cursor.nix
    ./wallpaper.nix
  ];
}
