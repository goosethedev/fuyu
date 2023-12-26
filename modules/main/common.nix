{ config, pkgs, ...}:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Allow Flakes
   nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = false;

  # Change swappiness
  boot.kernel.sysctl = { "vm.swappiness" = 10; };

  # Set Fnmode for media keys over F keys
  # 1 for media keys first | 0 for F keys first
  boot.extraModprobeConfig = ''
    options hid_apple fnmode=1
  '';

  # Set your time zone.
  time.timeZone = "America/La_Paz";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "colemak";
    # useXkbConfig = true; # use xkbOptions in tty.
  };

  # Allow .local/bin on $PATH
  environment.localBinInPath = true;

  # Version for stateful data, like file locations and database versions
  system.stateVersion = "23.05";

  # Enable sound
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    wireplumber.enable = true;
  };

  # Enable GnuPG
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryFlavor = "gnome3";
  };
 
}
