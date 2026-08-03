{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    neovim
    kitty
    git
    sbctl
    xrandr
    age
    sops
    libsecret
    kdePackages.kpmcore
  ];
}
