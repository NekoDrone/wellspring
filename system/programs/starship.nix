{ config, ... }:
{
  programs.starship = {
    enable = true;
    settings = config.home-manager.users.serenity.programs.starship.settings;
  };
}
