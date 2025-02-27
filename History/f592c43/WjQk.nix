{config, pkgs, ...}:

{

home.username = "leob";

home.homeDirectory = "/home/leob";

home.packages = [
	pkgs.hello
];

home.sessionVariables = {
	EDITOR = "nvim";
};

home.file = {
 #files can go here
 #example
 #".local/share/zsh/zsh-autosuggestions".source = "${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions";
};

home.stateVersion = "22.11";

programs.home-manager.enable = true;
programs.alacritty.enable = true;
programs.starship.enable = true;

home.file.".config/starship.toml".source = ./dotfiles/starship/starship.toml;
home.file.".config/waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
home.file.".config/waybar/style.css".source = ./dotfiles/waybar/style.css;
home.file.".config/hypr/hyprland.conf".source = ./dotfiles/hyprland/hyprland.conf;
home.file.".config/Code/User/keybindings.json".source = ./dotfiles/VsCodeDotfiles/keybindings.json;

services.hyprpaper = {
  enable = true;
  settings = {
    ipc = "on";  # Enables IPC for runtime control
    preload = [
      "./dotfiles/Aurora.jpg"
    ];
    wallpaper = [
      "DP-1,./dotfiles/Aurora.jpg"
    ];
  };
};

  programs.rofi = {
    enable = true;
    extraConfig = {
      "show-icons" = true;
      "icon-theme" = "Papirus";
    };
  };



stylix = {
enable = true;
targets.qt.enable = true;
targets.gtk.enable = true;
targets.qt.platform = "xdgdesktopportal";

};

}
