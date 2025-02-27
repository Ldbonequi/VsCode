{pkgs, ... }: 
{

  environment.systemPackages = with pkgs; [
      steam
        mangohud #system monitor
  ];

  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.steam.gamescopeSession.enable = true;

}