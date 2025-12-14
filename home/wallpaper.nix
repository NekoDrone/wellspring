{ pkgs, ... }:
let
  wallpapers = [
    {
      url = "https://raw.githubusercontent.com/NekoDrone/wellspring/refs/heads/main/assets/yuri.jpg";
      sha256 = "sha256-W5xj4EUw+Di44FYMCKEGJrm2AJRyY+isfAcPLRNKEHA=";
      ext = "jpg";
    }
    {
      url = "https://raw.githubusercontent.com/NekoDrone/wellspring/refs/heads/main/assets/wallpaper1.jpg";
      sha256 = "sha256-m8YyZWM3K67no6qY2alfR5pJwTAHqXzc+bPJKm2XzHY=";
      ext = "jpg";
    }
  ];

  fetchedWallpapers = map (
    w:
    pkgs.fetchurl {
      url = w.url;
      sha256 = w.sha256;
    }
  ) wallpapers;

  wallpaperDir = pkgs.linkFarm "wallpapers" (
    pkgs.lib.imap0 (i: wp: {
      name = "wallpaper-${toString i}.${(builtins.elemAt wallpapers i).ext}";
      path = wp;
    }) fetchedWallpapers
  );

  swww-random = pkgs.writeShellScriptBin "swww-random" ''
    wallpaper=$(${pkgs.findutils}/bin/find ${wallpaperDir} -type f -o -type l | ${pkgs.coreutils}/bin/shuf -n 1)
    ${pkgs.swww}/bin/swww img "$wallpaper" --transition-type fade --transition-duration 2
  '';
in
{
  services.swww = {
    enable = true;
  };

  home.packages = [ swww-random ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [
        "swww-daemon"
        "swww-random"
      ];
    };
  };

  systemd.user = {
    services.swww-randomize = {
      Unit = {
        Description = "Random wallpaper rotation with SWWW";
        PartOf = [ "graphical-session.target" ];
      };
      Service = {
        ExecStart = "${swww-random}/bin/swww-random";
        Type = "oneshot";
      };
    };

    timers.swww-randomize = {
      Unit = {
        Description = "Random wallpaper rotation timer";
        PartOf = [ "graphical-session.target" ];
      };
      Timer = {
        OnActiveSec = "15m"; # First change after 15 min
        OnUnitActiveSec = "15m"; # Then every 15 min
      };
      Install = {
        WantedBy = [ "graphical-session.target" ];
      };
    };
  };
}
