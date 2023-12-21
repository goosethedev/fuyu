{ config, lib, pkgs, ... }:

{
  imports = [
    ./home-folder-binds.nix
    ./local-folder-binds.nix
  ];

  # Fstab mount Data partition
  fileSystems."/media/Data" = {
    device = "/dev/sda8";
    fsType = "ntfs";
    options = [ "defaults" "utf8" "umask=000" "dmask=0027" "fmask=137" "gid=1000" "uid=1000" ];
  };
}
