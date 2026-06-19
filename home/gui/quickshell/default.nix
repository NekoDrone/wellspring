{
  programs.quickshell = {
    enable = true;
    systemd = {
      enable = true;
    };
    configs = {
      serenity = ./config;
    };
    activeConfig = "serenity";
  };
}
