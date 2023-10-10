{ config, lib, pkgs, modulesPath, ... }:  
{
  services.gnome.core-utilities.enable = false;
  
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    gnome3.gnome-tweaks
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.system-monitor
    gnome3.dconf-editor
  ];
}