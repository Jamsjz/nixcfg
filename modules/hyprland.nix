{ config, lib, pkgs, ... }:
{

  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    config.common.default = "*";
    wlr.enable = false;
    extraPortals = [

      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland

    ];
    configPackages = [

      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland

    ];
  };

  security.polkit.enable = true;

}
