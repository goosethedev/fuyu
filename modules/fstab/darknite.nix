{ config, lib, pkgs, ... }:

{
  imports = [
    ./home-folder-binds.nix
  ];

  # Fstab mount Data partition (ext4)
  fileSystems."/media/Data" = {
    device = "/dev/disk/by-label/Data";
    options = [ "nofail" ];
  };

  # Mount /var/lib/docker data from Data
  fileSystems."/var/lib/docker" = {
    device = "/media/Data/System/docker";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };

  # Fstab mount Personal partition (NTFS)
  fileSystems."/home/goose/Personal" = {
    device = "/dev/disk/by-label/Personal";
    fsType = "ntfs";
    options = [ "defaults" "utf8" "umask=000" "dmask=0027" "fmask=137" "gid=100" "uid=1000" "nofail" ];
  };
  
  # Mount Books (disabled in home-binds)
  fileSystems."/home/goose/Books" = {
    device = "/media/Data/Books";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };
}
