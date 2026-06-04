{ lib, config, ... }:
{
  programs.zsh = {
    enable = true;

    syntaxHighlighting = {
      enable = true;
    };

    autosuggestion = {
      enable = true;
    };

    dotDir = "${config.xdg.configHome}/zsh";

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
      alias ls='eza'
      [[ $- == *i* ]] && hyfetch
    '';
  };

  home.shell.enableZshIntegration = true;
}
