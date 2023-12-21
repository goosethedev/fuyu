{ config, lib, pkgs, ... }:

{
  # SYNCED - To be synced with Syncthing

  fileSystems."/home/goose/Books" = {
    device = "/media/Data/Books";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/.password-store" = {
    device = "/media/Data/Pass";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Personal" = {
    device = "/media/Data/Personal";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Projects" = {
    device = "/media/Data/Projects";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  # LOCAL - Not synced with Syncthing
  
  fileSystems."/home/goose/Desktop" = {
    device = "/media/Data/Desktop";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Documents" = {
    device = "/media/Data/Documents";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Downloads" = {
    device = "/media/Data/Downloads";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Pictures" = {
    device = "/media/Data/Pictures";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };
  
  fileSystems."/home/goose/Temp" = {
    device = "/media/Data/Temp";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };
}
