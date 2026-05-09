{
  imports = [
    ./discord.nix
    ./ghostty.nix
    ./browser.nix
    ./lutris.nix
    ./obs.nix
  ];

  programs = {
    obsidian = {
      enable = true;
    };
  };
}
