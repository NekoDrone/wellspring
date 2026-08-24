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

    bluetooth = {
      enable = true;
      powerOnBoot = false;
    };
  };

  services.xserver.videoDrivers = [
    "nvidia"
  ];
}
