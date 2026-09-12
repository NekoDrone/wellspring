{ inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default

    ./bar.nix
    ./panels.nix
    ./theme.nix
    ./widgets.nix
  ];

  programs.noctalia = {
    enable = true;
    systemd.enable = true;
  };
}
