{ pkgs, ... }:
{
  home.packages = with pkgs; [
    maple-mono.NF
    hanken-grotesk
    amiri
    karla
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
  ];

  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      monospace = [ "Maple Mono NF" ];
      sansSerif = [
        "Hanken Grotesk"
        "Noto Sans"
      ];
      serif = [
        "Amiri"
        "Noto Serif"
      ];
    };
  };
}
