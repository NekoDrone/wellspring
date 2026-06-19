{ config, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    nvidia = {
      modesetting.enable = true;
      open = true;
    };
  };

  services.xserver.videoDrivers = [
    "nvidia"
  ];
}
