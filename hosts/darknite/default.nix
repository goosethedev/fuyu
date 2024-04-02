{ pkgs, ... }:

let
  username = "goose";
  hostname = "darknite";
in {

  imports =
    [
      # Include hardware config
      ./hardware-configuration.nix

      # Include common configs
      ../../modules/main/common.nix
      (import ../../modules/main/users-config.nix { username = username; })
      (import ../../modules/main/networking.nix { hostname = hostname; })
      ../../modules/main/system-packages-fonts.nix

      # Install Hyprland (intel or nvidia)
      ../../modules/hyprland/intel.nix
      # ../modules/hyprland/nvidia.nix

      # Include mounts for this machine
      ../../modules/fstab/${hostname}.nix

      # Include utils
      ../../modules/utils/zsh.nix
      ../../modules/utils/docker.nix
    ];

  # System packages overrides (specific for this host)
  environment.systemPackages = with pkgs; [
    helvum
  ];

  # User packages overrides (specific for this host)
  # users.users.${username}.packages = with pkgs; [
  # ];
}
