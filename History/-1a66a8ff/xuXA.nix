{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xfce.thunar #file browser
    
    #archive programs
    zip #.zip
    unzip #.zip
    tar # .tar
    gzip #.gz .bz2
    p7zip #.7z
    tar #.tar
  ];

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
  services.gvfs.enable = true;
  services.tumbler.enable = true;

}

