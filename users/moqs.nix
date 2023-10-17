{ config, lib, pkgs, modulesPath, ... }:  
  {
  users.users.moqs = {
    isNormalUser = true;
    description = "moqs";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvrtd"];
    packages = with pkgs; [
      firefox
      thunderbird
      telegram-desktop
      keepass
      rclone
      vscode
      obsidian
      docker
      spotify
      winbox
      kitty
    ];
  };
  users.defaultUserShell = pkgs.zsh;
}