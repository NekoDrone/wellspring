{
  imports = [
    ./discord.nix
    ./ghostty.nix
    ./browser.nix
    ./lutris.nix
    ./obs.nix
    ./prism-launcher.nix
    ./vscode.nix
  ];

  programs = {
    obsidian = {
      enable = true;
    };
  };
}
