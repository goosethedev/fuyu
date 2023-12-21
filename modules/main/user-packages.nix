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
  };

  # Add to sudoers with NOPASSWD
  security.sudo.extraRules = [
    {
      users = [ "${username}" ];
      commands = [ { command = "ALL"; options = [ "NOPASSWD" ]; } ];
    }
  ];
}
