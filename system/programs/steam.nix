{ pkgs, inputs, ... }:
{
  programs.steam = {
    enable = true;
    extraCompatPackages = [
      pkgs.proton-ge-bin
      inputs.dw-proton.packages.${pkgs.stdenv.hostPlatform.system}.dw-proton
    ];
    package =
      with pkgs;
      steam.override {
        extraPkgs = pkgs: [
          jq
          cabextract
          wget
          git
          pkgsi686Linux.libpulseaudio
          pkgsi686Linux.freetype
          pkgsi686Linux.libxcursor
          pkgsi686Linux.libxcomposite
          pkgsi686Linux.libxi
        ];
      };

    protontricks.enable = true;
  };
}
