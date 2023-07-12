{ config
, pkgs
, ...
}: {
  home = {
    homeDirectory = "/home/yoolayn";

    packages = with pkgs; [
      bat
      bat-extras.batman
      btop
      delta
      erdtree
      fd
      gh
      glow
      lazygit
      lua54Packages.luarocks
      neofetch
      nodejs_20
      python311Packages.pip
      ripgrep
      rustup
      spotify
      starship
      stow
      tree-sitter
      zellij
    ];

    stateVersion = "23.05";
    username = "yoolayn";
  };
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  programs.home-manager.enable = true;
}
