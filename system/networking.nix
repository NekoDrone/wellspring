{
  networking = {
    hostName = "augur";
    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
      wifi = {
        powersave = false;
        macAddress = "random";
      };
    };
    firewall = {
      enable = true;
      allowPing = false;
    };
  };
  services.resolved = {
    enable = true;
    settings = {
      Resolve = {
        DNSSEC = "allow-downgrade";
        DNSOverTLS = "opportunistic";
      };
    };
  };
}
