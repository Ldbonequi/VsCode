{ config, pkgs, ... }:

{
  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    spotify     # Spotify desktop application
    firefox     # Firefox browser
    xfce.thunar #file browser
    obsidian #notes
    vesktop #discord with vencord and more linux support
    _1password-gui #1password

    #coding
    vscode
    git
      gh #git hub cli for auth
    neovim #text editor
    	wl-clipboard #allow nvim to access system keyboard

  ];


}

