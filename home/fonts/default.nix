{ pkgs, ... }:
{
  home.packages = with pkgs; [
    maple-mono.NF
    hanken-grotesk
    amiri
    karla
  ];

  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      monospace = [ "Maple Mono NF" ];
      sansSerif = [ "Hanken Grotesk" ];
      serif = [ "Amiri" ];
    };
  };
}
