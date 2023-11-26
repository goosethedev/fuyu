
{ config, pkgs, ... }:

{
  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    appimage-run  # Tools to run AppImages
    brightnessctl
    dunst
    efibootmgr
    gammastep
    gcc
    git
    gnupg
    grimblast
    hyprpaper
    jq  # eww script dep
    killall
    kitty
    pinentry
    pipewire
    playerctl
    refind
    rofi-wayland
    socat  # eww script dep
    unzip
    vim
    waybar
    wget
    wireplumber
    wl-clipboard
    xdg-utils
    zsh
  ];

  # Fonts
  fonts.packages = with pkgs; [
    # noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    # rictydiminished-with-firacode
    comic-mono
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
