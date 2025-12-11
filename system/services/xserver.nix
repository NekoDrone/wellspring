{
  services.xserver = {
    enable = true;
    displayManager = {
      setupCommands = ''
        xrandr --output DP-4 --auto --primary
      '';
    };
  };
}
