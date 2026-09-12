let
  mkBar =
    bar:
    {
      background_opacity = 0.95;

      dead_zone.actions = {
        left = "exec vicinae toggle";
        middle = "exec ghostty";
      };
    }
    // bar;

  group = id: members: { inherit id members; };
in
{
  programs.noctalia = {
    settings = {
      bar = {
        # layer-shell creation order matters for reserve_space
        order = [
          "side"
          "top"
        ];

        side = mkBar {
          position = "left";
          smart_auto_hide = true;
          margin_ends = 50;
          contact_shadow = true;

          start = [
            "clock"
            "group:g1"
          ];
          center = [ "taskbar" ];
          end = [
            "group:g2"
            "clipboard"
            "bluetooth"
            "volume"
            "vol"
            "group:g3"
            "control-center"
            "session"
          ];

          capsule_group = [
            (group "g1" [
              "launcher"
              "workspaces"
            ])
            (group "g2" [
              "tray"
              "notifications"
            ])
            (group "g3" [
              "ram"
              "sysmon"
            ])
          ];

          monitor."HDMI-A-2" = {
            position = "right";
            smart_auto_hide = true;

            start = [
              "volume"
              "group:g1"
            ];
            end = [
              "group:g2"
              "clock"
            ];

            # every group referenced by the lanes above has to be repeated here
            capsule_group = [
              (group "g1" [
                "launcher"
                "workspaces"
              ])
              (group "g2" [
                "notifications"
                "tray"
              ])
            ];
          };
        };

        top = mkBar {
          position = "top";

          start = [
            "augur"
            "active_window"
          ];
          center = [ "group:g1" ];
          end = [
            "notifications"
            "clipboard"
          ];

          capsule_group = [
            (group "g1" [
              "audio_visualizer"
              "media"
            ])
          ];
        };
      };
    };
  };
}
