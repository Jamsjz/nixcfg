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
      displayManager.lightdm.enable = true;
    };

    libinput.enable = true;

    fstrim = {
      enable = true;
      interval = "weekly";
    };
    displayManager.sddm.enable = false;
    open-webui.enable=true;
    udisks2.enable = true;
    gvfs.enable = true;
    gnome.gnome-online-accounts.enable = true;
    accounts-daemon.enable = true;
    auto-cpufreq.enable = true;
    ollama = {
      enable = true;
      acceleration = "cuda";
    };
  };
  systemd.extraConfig = "DefaultLimitNOFILE=524288";
  security.pam.loginLimits = [{
    domain = "viola";
    type = "hard";
    item = "nofile";
    value = "524288";
  }];
}
