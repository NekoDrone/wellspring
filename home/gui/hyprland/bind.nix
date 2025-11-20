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
          "${mod}, D, exec, discord"

          # Window actions
          # Click and drag
          "${mod}, mouse:272, movewindow"

          # Direction keys
          "${mod} SHIFT, left, movewindow, l"
          "${mod} SHIFT, right, movewindow, r"
          "${mod} SHIFT, up, movewindow, u"
          "${mod} SHIFT, down, movewindow, d"

          # Focus
          "${mod}, left, movefocus, l"
          "${mod}, right, movefocus, r"
          "${mod}, up, movefocus, u"
          "${mod}, down, movefocus, d"
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
