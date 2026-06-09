{ inputs, ... }:
{
  imports = [ inputs.silent-sddm.nixosModules.default ];

  services.displayManager.sddm = {
    enable = true;
    wayland = {
      enable = false;
    };
  };

  programs.silentSDDM = {
    enable = true;
    theme = "silvia";
  };

  systemd.tmpfiles.rules =
    let
      user = "serenity";
      iconPath = "../../assets/serenity.face.icon";
    in
    [
      "f+ /var/lib/AccountsService/users/${user}  0600 root root -  [User]\\nIcon=/var/lib/AccountsService/icons/${user}\\n"
      "L+ /var/lib/AccountsService/icons/${user}  -    -    -    -  ${iconPath}"
    ];
}
