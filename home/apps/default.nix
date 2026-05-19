{
  imports = [
    ./discord.nix
    ./ghostty.nix
    ./browser.nix
    ./lutris.nix
    ./obs.nix
    ./prism-launcher.nix
  ];

  programs = {
    obsidian = {
      enable = true;
    };
  };
}
