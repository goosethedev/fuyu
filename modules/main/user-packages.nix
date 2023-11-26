{ username ? "goose" }:
{ config, pkgs, lib, ... }:

# Check is username is valid
assert lib.asserts.assertOneOf "username" username [
  "goose"
];

{
  # Create users
  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
    packages = with pkgs; [
      bitwarden
      (catppuccin-gtk.override {
        accents = [ "teal" ]; # You can specify multiple accents here to output multiple themes
        size = "compact";
        tweaks = [ "rimless" "black" ]; # You can also specify multiple tweaks here
        variant = "mocha";
      })
      (catppuccin-kde.override {
        flavour = [ "mocha" ];
        accents = [ "teal" ];
      })
      chezmoi
      eww-wayland
      (firefox.override {
        nativeMessagingHosts = [ passff-host ];
      })
      helix
      htop
      libsForQt5.dolphin
      neofetch
      neovim
      notion-app-enhanced
      obsidian
      onlyoffice-bin
      pass-wayland
      passExtensions.pass-otp
      spotify
      syncthing
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
