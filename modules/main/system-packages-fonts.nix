
{ config, pkgs, ... }:

{
  # List packages installed in system profile
  # Here should go packages that root may need. Otherwise state them in HM
  environment.systemPackages = with pkgs; [
    brightnessctl # Move to HM
    dunst # Move to HM
    efibootmgr
    gcc
    git
    gnupg
    gptfdisk
    home-manager
    hyprpaper
    killall
    pinentry
    pipewire
    playerctl # Move to HM
    refind
    rofi-wayland # Move to HM
    vim
    wget
    wireplumber
    wl-clipboard
    xdg-utils
  ];

  # Fonts
  fonts.packages = with pkgs; [
    # noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    comic-mono
  ];
}
