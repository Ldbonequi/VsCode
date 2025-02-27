{packages, ...}:
{
  environment.systemPackages = with pkgs; [
    protonup
  ];

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS =
    "/home/leob/.steam/root/compatibilitytools.d";
  };

}