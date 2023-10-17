{ config, pkgs, ... }:

{
  services.upower.criticalPowerAction = "Hibernate";
  services.upower.timeCritical = 666;
  services.upower.ignoreLid = false;
  services.logind = {
    extraConfig = "HandlePowerKey=hibernate";
    lidSwitch = "suspend";
    lidSwitchExternalPower = "hibernate";
};
}