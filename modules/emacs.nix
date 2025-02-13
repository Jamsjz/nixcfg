{ pkgs, lib, specialArgs, ... }: {

  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };
  programs.direnv = {
    enable = true;
  };

}
