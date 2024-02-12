
{ config, pkgs, ... }:

{
  # List packages installed in system profile
  # Here should go packages that root may need. Otherwise state them in HM
  environment.systemPackages = with pkgs; [
    efibootmgr
    gcc
    git
    gnupg
    gptfdisk
    home-manager
    killall
    pinentry
    pipewire
    refind
    vim
    wireplumber
  ];

  # Fonts: Only necessary system ones
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    # noto-fonts-emoji
    fira-code
    fira-code-symbols
    # comic-mono
  ];
}
