{ config, pkgs, ... }:

{
  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    vscode
    git
      gh #git hub cli for auth
    neovim #text editor
    	wl-clipboard #allow nvim to access system keyboard
    jdk23 #java stable 23
    gradle #java build system
  ];
}