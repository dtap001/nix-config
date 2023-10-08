{ config, pkgs, ... }:

{
  home-manager.users.moqs = { pkgs, ... }: {
  home.stateVersion = "23.05";  
  home.packages = [ pkgs.htop pkgs.git pkgs.kitty];

   programs.git = {
    enable = true;
    userName  = "John Doe";
    userEmail = "johndoe@example.com";
  };

  programs.bash = {
    historyFileSize = 999999;
    historyFile = "~/zsh/history";
  };


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

  # programs.editorconfig  = {
  #   enable = true;
  #   settings = {
  #       "*" = {
  #       charset = "utf-8";
  #       end_of_line = "lf";
  #       trim_trailing_whitespace = true;
  #       insert_final_newline = true;
  #       max_line_width = 78;
  #       indent_style = "space";
  #       indent_size = 2;
  #     };
  #   };
  # };

  programs.kitty = {
    enable = true;
    theme = "Space Gray Eighties";
    keybindings = {
      "ctrl+t" = "new_window";
      "ctrl+w" = "close_window";
    };
  };


  };
}