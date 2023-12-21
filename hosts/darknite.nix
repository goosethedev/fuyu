

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
      # (import ../modules/main/user-packages.nix { username = username; })
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
  # users.users.${username}.packages = with pkgs; [
  #   stremio
  #   zoom-us
  #   home-manager
  # ];

  # Create users
  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
    packages = with pkgs; [
      # bitwarden
      # (catppuccin-gtk.override {
      #   accents = [ "teal" ]; # You can specify multiple accents here to output multiple themes
      #   size = "compact";
      #   tweaks = [ "rimless" "black" ]; # You can also specify multiple tweaks here
      #   variant = "mocha";
      # })
      # (catppuccin-kde.override {
      #   flavour = [ "mocha" ];
      #   accents = [ "teal" ];
      # })
      # chezmoi
      # eww-wayland
      # (firefox.override {
      #   nativeMessagingHosts = [ passff-host ];
      # })
      # helix
      htop
      libsForQt5.dolphin
      # neofetch
      # neovim
      # notion-app-enhanced
      # obsidian
      # onlyoffice-bin
      pass-wayland
      passExtensions.pass-otp
      # spotify
      # syncthing
      tmux
      xfce.thunar
    ];
  };

  # Add to sudoers with NOPASSWD
  security.sudo.extraRules = [
    {
      users = [ "${username}" ];
      commands = [ { command = "ALL"; options = [ "NOPASSWD" ]; } ];
    }
  ];
}
