{ config, lib, pkgs, ... }:

{
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

  # fileSystems."/home/goose/Orgmind" = {
  #   device = "/media/Data/Orgmind";
  #   fsType = "none";
  #   options = [ "defaults" "bind" ];
  # };

  fileSystems."/home/goose/Pictures" = {
    device = "/media/Data/Pictures";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Projects" = {
    device = "/media/Data/Projects";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };
  
  fileSystems."/home/goose/Temp" = {
    device = "/media/Data/Temp";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };
}
