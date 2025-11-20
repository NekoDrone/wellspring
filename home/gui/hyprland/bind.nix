let
  mod = "SUPER";
in
{
  wayland.windowManager = {
    hyprland = {
      settings = {
        "$mod" = mod;
        bind = [
          "${mod}, F, exec, firefox"
          "${mod}, Return, exec, ghostty"
          "${mod}, Q, killactive"
	  "${mod}, Y, fullscreen"
        ]
        ++ (builtins.concatLists (
          builtins.genList (
            i:
            let
              ws = i + 1;
            in
            [
              "$mod, code:1${toString i}, workspace, ${toString ws}"
              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
            ]
          ) 9
        ));
      };
    };
  };
}
