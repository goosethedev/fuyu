{ hostname }:
{ config, pkgs, lib, ... }:

# Check is hostname is valid
assert lib.asserts.assertOneOf "hostname" hostname [
  "daydream"
  "dashbox"
  "darknite"
];

{
  # Network config
  networking.hostName = "${hostname}"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  networking.firewall.enable = false; # Disable the firewall altogether.
}