

{ config, pkgs, ... }:

let
  username = "goose";
  hostname = "darknite";
in {

  imports =
    [
      # Include hardware config
      /etc/nixos/hardware-configuration.nix

      # Include common configs
      ../modules/main/common.nix
      (import ../modules/main/user-packages.nix { username = username; })
      (import ../modules/main/networking.nix { hostname = hostname; })
      ../modules/main/system-packages-fonts.nix

      # Install Hyprland (intel or nvidia)
      ../modules/hyprland/intel.nix
      # ../modules/hyprland/nvidia.nix

      # Include mounts for this machine
      ../modules/fstab/${hostname}.nix

      # Include utils
      # ../modules/utils/zsh.nix
      ../modules/utils/docker.nix
      ../modules/utils/japanese.nix
    ];

  # System packages overrides (specific for this host)
  # environment.systemPachages = with pkgs; [];

  # User packages overrides (specific for this host)
  users.users.${username}.packages = with pkgs; [
    htop
    libsForQt5.dolphin
    pass-wayland
    passExtensions.pass-otp
    tmux
    xfce.thunar
  ];
}
