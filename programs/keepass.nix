{ config, pkgs, ... }:

{
  nixpkgs.config.packageOverrides = pkgs: {
    # Keepass plugin Overrides
    keepass = pkgs.keepass.override {
      # Just leave your plugin-packages here
      plugins = [
        pkgs.keepass-keepassrpc
        pkgs.keepass-keepasshttp
        pkgs.keepass-keeagent
      ];
    };
  };

}