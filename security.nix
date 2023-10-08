
{ config, lib, pkgs, modulesPath, ... }:  
{
    security.sudo.extraConfig = "Defaults env_reset,timestamp_timeout=-1";
}