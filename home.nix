{ config, pkgs, ... }:

{
  home.username = "serenity";
  home.homeDirectory = "/home/serenity";

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  programs = {
    firefox = {
      enable = true;
    };

    ghostty = {
      enable = true;
    };
  };

  wayland.windowManager = {
    hyprland = {
      enable = true;
      settings = {
        "$mod" = "SUPER";
	bind = [
	  "$mod, F, exec, firefox"
	  "$mod, Q, exec, ghostty"
	] ++ (
	  builtins.concatLists  (builtins.genList  (i:
	    let ws = i + 1;
	    in [
	      "$mod, code:1${toString i}, workspace, ${toString  ws}"
	      "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
	    ]
	  )
	  9)
	);
      };
      package = null;
      portalPackage = null;
    };
  };
}
