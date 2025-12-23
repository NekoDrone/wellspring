{
  programs.zsh = {
    enable = true;

    syntaxHighlighting = {
      enable = true;
    };

    autosuggestion = {
      enable = true;
    };

    enableCompletion = true;
  };

  home.shell.enableZshIntegration = true;
}
