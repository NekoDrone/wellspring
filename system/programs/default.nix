{
  imports = [
    ./steam.nix
    ./misc.nix
    ./starship.nix
    ./appimage.nix
  ];

  programs.zsh = {
    enable = true;
  };

  programs.niri = {
    enable = true;
  };
}
