{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    # desktop stuff
    pavucontrol
    nwg-look
    grimblast
    pipewire
    wireplumber
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.qtsvg
    kdePackages.qtimageformats
    kdePackages.qtmultimedia
    kdePackages.qt5compat
    kdePackages.partitionmanager

    # apps
    signal-desktop
    cosmic-files
    vlc
    kdePackages.gwenview
    kdePackages.okular
    telegram-desktop
    heroic
    xivlauncher
    _1password-gui
    inkscape
    piper
    libreoffice
    qbittorrent

    # cli stuff
    jq
    _1password-cli
    claude-code

    # gaming
    wine
    winetricks
    ckan
    xwayland-satellite
  ];
}
