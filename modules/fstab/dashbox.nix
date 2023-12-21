
{ config, lib, pkgs, ... }:

{
  imports = [
    ./home-folder-binds.nix
  ];

  # Fstab mount Data partition
  fileSystems."/media/Data" = {
    device = "/dev/disk/by-uuid/ff23f419-8f99-4f08-97b3-21b638d6c19c";
    # ext4 partitions don't need any of this
    # it's enough to change permissions and ownership in the partition files themselves
    # fsType = "ext4";
    # options = [ "defaults" "umask=000" "gid=100" "uid=1000" "nofail" ];
  };
}
