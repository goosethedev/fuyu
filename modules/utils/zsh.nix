{ config, pkgs, ...}:

{
  # Basic config only. The rest is on Home Manager
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ]; 

  # programs.zsh = {
  #   enable = true;
  #   histFile = "$HOME/.cache/.zsh_history";
  #   enableCompletion = true;
  #   enableGlobalCompInit = false;
  #   autosuggestions.enable = true;
  #   syntaxHighlighting.enable = true;
  #   interactiveShellInit = ''
  #     ZSH_COMPDUMP=$HOME/.cache/.zcompdump-$HOST
  #   '';
  # };

  # users.defaultUserShell = pkgs.zsh;
  # environment.shells = with pkgs; [ zsh ]; 
  # programs.zsh.ohMyZsh = {
  #   enable = true;
  #   plugins = [ "aliases" "git" ];
  #   theme = "powerlevel10k/powerlevel10k";
  #   custom = "$HOME/.config/zsh/oh-my-zsh";
  # };
}
