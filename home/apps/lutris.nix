{
  osConfig,
  pkgs,
  inputs,
  ...
}:
{
  programs.lutris = {
    enable = true;
    steamPackage = osConfig.programs.steam.package;
    protonPackages = [
      pkgs.proton-ge-bin
      inputs.dw-proton.packages.${pkgs.stdenv.hostPlatform.system}.dw-proton
    ];
  };
}
