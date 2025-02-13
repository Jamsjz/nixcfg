{ pkgs, lib, specialArgs, ... }: {

  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };
}
