{ inputs, pkgs, ... }:
{
  imports = [
    inputs.moonlight.homeModules.default
  ];

  programs.moonlight = {
    enable = true;
    configs.stable = {
      extensions = {
        moonbase = true;
        disableSentry = true;
        noTrack = true;
        noHideToken = true;
        moonlight-css = {
          enabled = true;
          config = {
            paths = [
              "/home/serenity/.config/moonlight-mod/themes"
            ];
          };
        };
      };
      repositories = [
        "https://moonlight-mod.github.io/extensions-dist/repo.json"
      ];
    };
  };
}
