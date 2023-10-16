{ config, pkgs, ... }:

{
  services.upower.criticalPowerAction = "Hibernate";
  services.upower.timeCritical = 666;
}