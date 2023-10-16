{ config, pkgs, ... }:

{
  home-manager.users.moqs = { ... }: {
  home.stateVersion = "23.05";  
  nixpkgs.config.allowUnfree = true;
  # Packages that should be installed to the user profile.
  home.packages = [ pkgs.htop pkgs.git pkgs.kitty pkgs.spotify ];

  programs.git = {
    enable = true;
    userName  = "John Doe";
    userEmail = "johndoe@example.com";
  };

  programs.bash = {
    historyFileSize = 999999;
    historyFile = "~/zsh/history";
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      yzhang.markdown-all-in-one
      jnoortheen.nix-ide
      timonwong.shellcheck
      jebbs.plantuml
      dbaeumer.vscode-eslint
      #rwl.angular-console
    ];
    keybindings = [
      {
      key = "ctrl+d";
      command = "editor.action.deleteLines";
      }
    ];
  };

    #dconf write /org/gnome/desktop/sound/input-feedback-sound "false"
  dconf.settings = {
    "org/gnome/desktop/sound".input-feedback-sound = false;
    "org/gnome/desktop/sound".event-sounds = false;

  };
  # systemd.user.services.keepassxc = {
  #   Unit = {
  #     Description = "KeepassXC startup";
  #     PartOf = [ "river-session.target" ];
  #     Wants = [ "waybar.service" ];
  #     After = [ "river-session.target" "waybar.service" ];
  #   };
  #   Service = {
  #     ExecStart = "${pkgs.keepassxc}/bin/keepassxc";
  #     Restart = "always";
  #   };
  #   Install.WantedBy = [ "river-session.target" ];
  # };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "docker-compose" "docker" "git" "dotenv" ];
      theme = "dst";
    };
    initExtra = ''
      bindkey '^f' autosuggest-accept
    '';
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.kitty = {
    enable = true;
    theme = "Space Gray Eighties";
    keybindings = {
      "ctrl+t" = "new_window";
      "ctrl+w" = "close_window";
    };
    environment = {
      "KITTY_ENABLE_WAYLAND" = "1";
    };
  };
  };
}