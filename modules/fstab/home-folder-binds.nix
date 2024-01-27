{ config, lib, pkgs, ... }:

{
  # SYNCED - To be synced with Syncthing

  # Not useful in Daydream
  # fileSystems."/home/goose/Books" = {
  #   device = "/media/Data/Books";
  #   fsType = "none";
  #   options = [ "defaults" "bind" "nofail" ];
  # };

  fileSystems."/home/goose/.password-store" = {
    device = "/media/Data/Pass";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };

  # Moved to separate NTFS partition
  # fileSystems."/home/goose/Personal" = {
  #   device = "/media/Data/Personal";
  #   fsType = "none";
  #   options = [ "defaults" "bind" "nofail" ];
  # };

  fileSystems."/home/goose/Projects" = {
    device = "/media/Data/Projects";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };

  # LOCAL - Not synced with Syncthing
  
  fileSystems."/home/goose/Desktop" = {
    device = "/media/Data/Desktop";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };

  fileSystems."/home/goose/Documents" = {
    device = "/media/Data/Documents";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };

  fileSystems."/home/goose/Downloads" = {
    device = "/media/Data/Downloads";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };

  fileSystems."/home/goose/Pictures" = {
    device = "/media/Data/Pictures";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };
  
  fileSystems."/home/goose/Temp" = {
    device = "/media/Data/Temp";
    fsType = "none";
    options = [ "defaults" "bind" "nofail" ];
  };
}
