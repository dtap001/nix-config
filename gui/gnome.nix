{ config, lib, pkgs, modulesPath, ... }:  
{
  services.gnome.core-utilities.enable = false;
  
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    gnome.gnome-session
    
    gnome3.gnome-tweaks
    gnome3.dconf-editor
    gnomeExtensions.pano
    gnomeExtensions.tiling-assistant
    gnomeExtensions.dash-to-panel
    gnomeExtensions.places-status-indicator
    gnomeExtensions.system-monitor
    gnomeExtensions.audio-output-switcher
  ];


}