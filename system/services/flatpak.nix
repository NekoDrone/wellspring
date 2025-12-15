{ inputs, ... }:
{
  imports = [
    inputs.flatpaks.nixosModules.default
  ];

  services.flatpak = {
    enable = true;
  };
}
