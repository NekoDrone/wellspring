{
  networking = {
    hostName = "augur";
    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
    };
  };
  services.resolved = {
    enable = true;
  };
}
