{
  imports = [
    ./services
    ./sops.nix
    ./hardware.nix
    ./boot.nix
    ./networking.nix
    ./fonts.nix
    ./pkgs.nix
    ./nix.nix
    ./nixpkgs.nix
    ./users.nix
    ./programs
  ];

  environment.pathsToLink = [
    "/share/zsh"
    "/share/applications"
    "/share/xdg-desktop-portal"
  ];

  # Set your time zone.
  time.timeZone = "Asia/Singapore";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_SG.UTF-8";
    LC_IDENTIFICATION = "en_SG.UTF-8";
    LC_MEASUREMENT = "en_SG.UTF-8";
    LC_MONETARY = "en_SG.UTF-8";
    LC_NAME = "en_SG.UTF-8";
    LC_NUMERIC = "en_SG.UTF-8";
    LC_PAPER = "en_SG.UTF-8";
    LC_TELEPHONE = "en_SG.UTF-8";
    LC_TIME = "en_SG.UTF-8";
  };

  xdg.portal = {
    enable = true;
  };
}
