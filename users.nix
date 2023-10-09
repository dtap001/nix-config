{ config, lib, pkgs, modulesPath, ... }:  
  {
  programs.dconf.enable = true;
   #Define a user account. Don't forget to set a password with ‘passwd’. 
  users.users.moqs = {
    isNormalUser = true;
    description = "moqs";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
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
}