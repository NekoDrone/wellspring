{ config, inputs, ... }:
{
  imports = [ inputs.sops-nix.nixosModules.sops ];

  sops = {
    defaultSopsFile = ../secrets/serenity.yaml;
    age.keyFile = "/home/serenity/.config/sops/age/keys.txt";
    secrets.key-gpg = {
      owner = config.users.users.serenity.name;
    };
    secrets.key-ssh = {
      owner = config.users.users.serenity.name;
    };
  };
}
