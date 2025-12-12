{
  nixosConfig,
  config,
  pkgs,
  ...
}:
{

  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    pinentry.package = pkgs.pinentry-curses;
  };

  home.activation.importGpgKey = config.lib.dag.entryAfter [ "writeBoundary" ] ''
    if [ -f ${nixosConfig.sops.secrets.key-gpg.path} ]; then
      ${pkgs.gnupg}/bin/gpg --import ${nixosConfig.sops.secrets.key-gpg.path} 2>/dev/null || true
    fi
  '';
}
