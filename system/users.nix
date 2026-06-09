{ pkgs, ... }:
{
  users.users.serenity = {
    isNormalUser = true;
    description = "Serenity";
    extraGroups = [
      "networkmanager"
      "wheel"
      "keys"
    ];
    shell = pkgs.zsh;
  };
}
