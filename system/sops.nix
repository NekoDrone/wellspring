{config, ...}:
{
  sops = {
    defaultSopsFile = ../secrets/serenity.yaml;
    age.keyFile = "/home/serenity/.config/sops/age/keys.txt";
    secrets.key-gpg = {
      owner = config.users.users.serenity.name;
      path = "${config.users.users.serenity.home}/.gnupg/private-key.asc";
    };
  };
}
