{ config, lib, pkgs, modulesPath, ... }:  
  {
   #Define a user account. Don't forget to set a password with ‘passwd’. 
  users.users.moqs = {
    isNormalUser = true;
    description = "moqs";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      gnomeExtensions.dash-to-dock
      firefox
      thunderbird
      telegram-desktop
      keepass
      rclone
      vscode
      spotify
      obsidian
      docker
      winbox
      kitty
    ];
  };
  users.defaultUserShell = pkgs.zsh;
  programs.dconf.enable = true;
 # dconf.settings."org/gnome/desktop/wm/preferences".button-layout = "menu:minimize,maximize,close";

  }