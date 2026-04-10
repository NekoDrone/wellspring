{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    neovim
    kitty
    git
    sbctl
    xorg.xrandr
    age
    sops
    libsecret
  ];
}
