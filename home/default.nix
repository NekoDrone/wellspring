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
    ./apps
    ./packages.nix
    ./fonts
  ];
}
