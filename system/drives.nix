{
  fileSystems."/mnt/armarium-i" = {
    device = "/dev/disk/by-uuid/ad6ea66f-1584-4fc0-9464-9542283cedce";
    fsType = "ext4";
    options = [
      "defaults"
      "noatime"
    ];
  };

  fileSystems."/mnt/armarium-ii" = {
    device = "/dev/disk/by-uuid/58CE381BCE37F03C";
    fsType = "ntfs3";
    options = [
      "rw"
      "noatime"
    ];
  };
}
