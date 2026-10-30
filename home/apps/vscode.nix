{ pkgs, ... }:
{
  programs = {
    vscodium = {
      enable = true;
      profiles.default = {

        userSettings = {
          "dotnetAcquisitionExtension.sharedExistingDotnetPath" = "${pkgs.dotnet-sdk_9}/bin";
          "godotTools.lsp.serverPort" = 6005;
          "workbench.colorTheme" = "Catppuccin Mocha";
          "workbench.iconTheme" = "catppuccin-mocha";
          "extensions.experimental.affinity" = {
            "asvetliakov.vscode-neovim" = 1;
          };
          "editor.fontSize" = 15;
          "editor.lineHeight" = 1.6;
          "editor.letterSpacing" = 0.05;
        };

        extensions = with pkgs.vscode-extensions; [
          # environment
          mkhl.direnv

          # language/framework-specific
          geequlim.godot-tools
          ms-dotnettools.csharp
          ms-dotnettools.vscode-dotnet-runtime

          # theme
          catppuccin.catppuccin-vsc
          catppuccin.catppuccin-vsc-icons

          # interaction
          asvetliakov.vscode-neovim
        ];
      };
    };
  };
}
