{ nixosConfig, ... }:
let
  inherit (nixosConfig.sops) secrets;
in
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    settings = {
      "*" = {
        forwardAgent = false;
        addKeysToAgent = "no";
        compression = false;
        serverAliveInterval = 0;
        serverAliveCountMax = 3;
        hashKnownHosts = false;
        userKnownHostsFile = "~/.ssh/known_hosts";
        controlMaster = "no";
        controlPath = "~/.ssh/master-%r@%n:%p";
        controlPersist = "no";
      };

      "github.com" = {
        user = "git";
        hostname = "github.com";
        identityFile = secrets.key-ssh.path;
      };

      "tangled.org" = {
        user = "git";
        hostname = "tangled.org";
        identityFile = secrets.key-ssh-tangled.path;
      };

      "knot.gmstn.systems" = {
        user = "git";
        hostname = "knot.gmstn.systems";
        identityFile = secrets.key-ssh-tangled.path;
      };

      "git.goldweaver.systems" = {
        user = "forgejo";
        hostname = "git.goldweaver.systems";
        identityFile = secrets.key-ssh.path;
      };
    };
  };
}
