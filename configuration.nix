{ config, lib,inputs, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./nvidia.nix
      ./modules/vm.nix
      ./modules/boot.nix
      ./modules/nix-config.nix
      ./modules/packages.nix
      ./modules/user.nix
      ./modules/hyprland.nix
      ./modules/services.nix
      ./modules/sound.nix
      ./modules/virtualisation.nix
    ];




  networking = {
    hostName = "jj";
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = true;
  };


  hardware = {
    graphics.enable = true;
    bluetooth = {
      enable = true;
      powerOnBoot = true;
      settings = {
        General = {
          #Enable = "Source,Sink,Media,Socket";
          #Experimental = true;
        };
      };
    };
  };
  musnix={
    enable = true;
    kernel.realtime = true;
    soundcardPciId = "00.1f.3";
    rtirq.enable = true;
  };



  # Localization
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
    useXkbConfig = false;
  };

  # Time configuration
  time = {
    timeZone = "Asia/Kathmandu";
    # hardwareClockInLocaltime = true;  

  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

environment.variables = {
    QT_STYLE_OVERRIDE = "kvantum";
    QT_QPA_PLATFORMTHEME = "qt5ct";     
  };

  # Users
  nixpkgs.config.allowUnfree = true;


  # System state version
  system.stateVersion = "24.11";
}
