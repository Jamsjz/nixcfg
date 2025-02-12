{ pkgs, lib, specialArgs, ... }: {

  # programs.emacs = {
  #   enable = true;
  #   package = pkgs.emacs;
  #   # extraConfig = ''
  #   # '';
  #
  # };
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

}
