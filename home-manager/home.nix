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
      neofetch
      nodejs_20
      ripgrep
      rustup
      spotify
      starship
      stow
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
