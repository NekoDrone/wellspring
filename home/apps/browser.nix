{ inputs, ... }:
let
  mkLockedAttrs = builtins.mapAttrs (
    _: value: {
      Value = value;
      Status = "locked";
    }
  );
  preferencesConfig = mkLockedAttrs {
    "zen.view.use-single-toolbar" = true;
    "zen.welcome-screen.seen" = true;
  };
in
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  programs.zen-browser = {
    enable = true;

    profiles.serenity = {
      settings = preferencesConfig;
    };

    policies = {
      Preferences = preferencesConfig;
    };
  };
}
