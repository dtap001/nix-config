{ config, lib, pkgs, modulesPath, ... }:  
{
  services.xrdp.enable = true;
  services.xrdp.defaultWindowManager = "gnome-wayland";
  services.xrdp.openFirewall = true;
}