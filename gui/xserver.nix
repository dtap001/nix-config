{ config, lib, pkgs, modulesPath, ... }:  
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "hu";
    xkbVariant = "102_qwertz_comma_nodead";
  };

}