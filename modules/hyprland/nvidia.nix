{ config, pkgs, ...}:

{
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    # No longer necessary
    # enableNvidiaPatches = true;
    xwayland.enable = true;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };

  # Enable portals (Hyprland and GTK)
  # GTK necessary for File Picker, recommended by Hyprland Wiki
  # https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/
  xdg.portal = {
    xdgOpenUsePortal = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  # Might possibly be needed
  environment.sessionVariables = {
    # If cursor is invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint Electron apps to use Wayland
    # This broke Electron last time. Do not enable.
    # NIXOS_OZONE_WL = "1";
    LIBVA_DRIVER_NAME = "nvidia";
    XDG_SESSION_TYPE = "wayland";
  };

  # Extra packages recommended by wiki
  environment.systemPackages = with pkgs; [
    libva
    libsForQt5.qt5ct
    libsForQt5.qt5.qtwayland
  ];

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;

    # Fix crashes on Electron apps. I don't think does something
    # extraPackages = [ pkgs.nvidia-vaapi-driver ];
  };

  hardware.nvidia = {
    # Most Wayland compositors need this
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
  };
}
