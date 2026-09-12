{
  imports = [
    ./appimage.nix
    ./misc.nix
    ./starship.nix
    ./steam.nix
  ];

  programs.zsh = {
    enable = true;
  };

  programs.niri = {
    enable = true;
  };
}
