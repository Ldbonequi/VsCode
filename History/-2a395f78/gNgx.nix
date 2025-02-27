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
    zip
    unzip
    tar
    gzip
    p7zip
  ];

  #thunar stuff
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
  services.gvfs.enable = true;
  services.tumbler.enable = true;

}

