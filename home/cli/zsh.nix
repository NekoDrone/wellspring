{ lib, ... }:
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

    history = {
      size = 5000;
      share = true;
      saveNoDups = true;
      save = 5000;
      append = true;
      ignoreDups = true;
      ignoreAllDups = true;
      expireDuplicatesFirst = true;
      findNoDups = true;
      ignoreSpace = true;
    };

    initContent = lib.mkOrder 1000 ''
      bindkey '^[OA' history-search-backward	
      bindkey '^[OB' history-search-forward
    '';
  };

  home.shell.enableZshIntegration = true;
}
