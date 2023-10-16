{ config, lib, pkgs, modulesPath, ... }:  
{
  services.xrdp.enable = true;
  services.xrdp.defaultWindowManager = "/run/current-system/sw/bin/gnome-session";
  services.xrdp.openFirewall = true;
}