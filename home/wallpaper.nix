{ pkgs, ... }:
let
  wallpapers = [
    {
      url = "https://raw.githubusercontent.com/NekoDrone/wellspring/refs/heads/main/assets/yuri.jpg";
      hash = "sha256-W5xj4EUw+Di44FYMCKEGJrm2AJRyY+isfAcPLRNKEHA=";
      ext = "jpg";
    }
    {
      url = "https://raw.githubusercontent.com/NekoDrone/wellspring/refs/heads/main/assets/wallpaper1.jpg";
      hash = "sha256-m8YyZWM3K67no6qY2alfR5pJwTAHqXzc+bPJKm2XzHY=";
      ext = "jpg";
    }
    {
      url = "https://raw.githubusercontent.com/dharmx/walls/main/animated/city.gif";
      hash = "sha256-IWS+cfGQkeJQax0a4RjI3syjA51klYM/cU8lhdLqxQs=";
      ext = "gif";
    }
    {
      url = "https://raw.githubusercontent.com/dharmx/walls/main/anime/a_cartoon_of_a_woman_with_her_hands_on_her_face.jpg";
      hash = "sha256-atndfi+7nfw2CMj1qfUjgc6wn+WxGYATj0+CiYtEqv0=";
      ext = "jpg";
    }
    {
      url = "https://raw.githubusercontent.com/dharmx/walls/main/apocalypse/a_woman_standing_in_front_of_a_window.jpg";
      hash = "sha256-AMJQp2GbtK/0+9U0KXZeuDEGHkQiMeHEV131Gk9zpY8=";
      ext = "jpg";
    }
    {
      url = "https://raw.githubusercontent.com/dharmx/walls/main/animated/kessoku-band-in-the-train-bocchi-the-rock-moewalls-com.mp4";
      hash = "sha256-zl6JOxFBt0VGmnBQbR1mkbQOYtJOsam9tLmutXl4BEg=";
      ext = "mp4";
    }
    {
      url = "https://raw.githubusercontent.com/dharmx/walls/main/animated/star-wars-ghibli-style-moewalls-com.mp4";
      hash = "sha256-NANQZdBHfC+ZTGjGOwZmRGWNgoo5WUZneVhECg0L0N8=";
      ext = "mp4";
    }
  ];

  fetchedWallpapers = map (
    w:
    pkgs.fetchurl {
      url = w.url;
      hash = w.hash;
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
