{ config, lib, pkgs, ... }:
{


  # Services
  services = {

    logind = {
	  lidSwitchExternalPower="ignore";
	  lidSwitchDocked="ignore";
	  lidSwitch="ignore";
    };

    flatpak.enable = false;
    openssh = {
      enable = true;
      settings = {
        PermitRootLogin = "no";
        PasswordAuthentication = true;
      };
    };


    xserver = {

      enable = true;
      displayManager.lightdm.enable = false;
    };

    libinput.enable = true;

    fstrim = {
      enable = true;
      interval = "weekly";
    };
    displayManager.sddm.enable = false;
  };
}
