{ config, pkgs, ...}:

{
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    xwayland.enable = true;
  };

  # Might possibly be needed
  environment.sessionVariables = {
    # If cursor is invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint Electron apps to use Wayland
    NIXOS_OZONE_WL = "1";
  };

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  hardware.nvidia = {
    # Most Wayland compositors need this
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
  };
}
