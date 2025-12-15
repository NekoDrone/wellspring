{ pkgs, lib, ... }:
{
  # Bootloader.
  boot.loader.efi = {
    canTouchEfiVariables = true;
  };

  boot.lanzaboote = {
    enable = true;
    pkiBundle = "/var/lib/sbctl";

    configurationLimit = 5;
  };

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
