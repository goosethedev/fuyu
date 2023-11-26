{ config, lib, pkgs, ... }:

{
  fileSystems."/home/goose/Books" = {
    device = "/media/Data/Books";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };

  fileSystems."/home/goose/Hypermind" = {
    device = "/media/Data/Hypermind";
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

  fileSystems."/home/goose/Sync" = {
    device = "/media/Data/Sync";
    fsType = "none";
    options = [ "defaults" "bind" ];
  };
}
