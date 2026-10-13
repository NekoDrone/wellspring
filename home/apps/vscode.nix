{ pkgs, ... }:
{
  programs = {
    vscodium = {
      enable = true;
      profiles.default = {
        userSettings = {
          "dotnetAcquisitionExtension.sharedExistingDotnetPath" = "${pkgs.dotnet-sdk_9}/bin";
          "godotTools.lsp.serverPort" = 6005;
        };
        extensions = with pkgs.vscode-extensions; [
          geequlim.godot-tools
          ms-dotnettools.csharp
          ms-dotnettools.vscode-dotnet-runtime
        ];
      };
    };
  };
}
