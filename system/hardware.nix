{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    nvidia.open = true;
  };

  services.xserver.videoDrivers = [
    "nvidia"
  ];
}
