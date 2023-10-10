{ config, lib, pkgs, modulesPath, ... }:  
{
  programs.dconf.enable = true;
  programs.zsh.enable = true;
}