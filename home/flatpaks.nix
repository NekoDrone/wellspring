{ inputs, pkgs, ... }:
let
  r2modman = pkgs.fetchurl {
    url = "https://github.com/ebkr/r2modmanPlus/releases/download/v3.2.15/r2modman-3.2.15-x86_64.flatpak";
    hash = "sha256-Ksc9UCFdI2BOiMZ+9LIYBZQcVmFwxBPPkFs6/yraOfs=";
  };
in
{
  imports = [
    inputs.flatpaks.homeModules.default
  ];

  services.flatpak = {
    enable = true;
    remotes = {
      "flathub" = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      "flathub-beta" = "https://dl.flathub.org/beta-repo/flathub-beta.flatpakrepo";
    };

    packages = [
      "flathub:app/com.discordapp.Discord//stable"
      ":${r2modman}"
    ];
  };
}
