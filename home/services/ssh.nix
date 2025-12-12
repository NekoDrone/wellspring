{ nixosConfig, ...}:
let
  inherit (nixosConfig.sops) secrets;
in
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    matchBlocks = {
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
    };
  };
}
