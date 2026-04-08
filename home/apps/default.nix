{
  imports = [
    # ./discord.nix
    ./ghostty.nix
    ./browser.nix
    ./lutris.nix
  ];

  programs = {
    obsidian = {
      enable = true;
    };
  };
}
