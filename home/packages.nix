{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    # (discord.override {
    #   withMoonlight = true;
    #   moonlight = inputs.moonlight.packages.${pkgs.system}.moonlight;
    # })
    pavucontrol
    nwg-look
    signal-desktop
    cosmic-files
    vlc
    kdePackages.gwenview
    kdePackages.okular
    telegram-desktop
    heroic
    grimblast
    xivlauncher
    _1password-gui
    _1password-cli
    inkscape
    piper
    claude-code
    wine
    winetricks
    libreoffice
    qbittorrent
    modrinth-app
    ckan
    pipewire
    wireplumber
    xwayland-satellite
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    jq
    kdePackages.qtsvg
    kdePackages.qtimageformats
    kdePackages.qtmultimedia
    kdePackages.qt5compat
    oterm
    aichat
    kdePackages.partitionmanager
  ];
}
