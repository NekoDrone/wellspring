{ inputs, pkgs, ... }:
{
  imports = [
    inputs.moonlight.homeModules.default
  ];

  programs.moonlight-mod = {
    enable = true;
  };
}
