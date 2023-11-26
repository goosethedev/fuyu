{ config, lib, pkgs, ... }:

{
  imports = [
    ./home-folder-binds.nix
  ];

  # Fstab mount Data partition
  fileSystems."/media/Data" = {
    device = "/dev/nvme0n1p8";
    fsType = "ntfs";
    options = [ "defaults" "utf8" "umask=000" "dmask=0027" "fmask=137" "gid=1000" "uid=1000" ];
  };

  # Mount Vault
  fileSystems."/home/goose/Vault" = {
    device = "/dev/sda2";
    fsType = "ntfs";
    options = [ "defaults" "utf8" "umask=000" "dmask=0027" "fmask=137" "gid=1000" "uid=1000" ];
  };
}
