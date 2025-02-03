{ config, lib, pkgs, ... }:
{
users.users.viola = {
  isNormalUser = true;
  home = "/home/viola";
  description = "its viola, i suppose;";
  ignoreShellProgramCheck = true;
  extraGroups = [
    "wheel"
    "networkmanager"
    "qemu"
    "audio"
    "libvirtd"
    "sshd"
    "docker"
    "video"
  ];
  hashedPassword = "$6$vHKMmwAI5IGJzonT$IeTyEq21hR60k7Pkm8.keOv1cKUXFFtbqdTkp/OMs8fv622dqqadHP7kieEDe0V4UJX5WgstGcr1DpaHxYkg..";
  shell = pkgs.zsh;
  # packages = with pkgs; [
  #   gxplugins-lv2
  #   helm
  #   dragonfly-reverb
  #   aether-lv2
  #   hybridreverb2
  #   mooSpace
  #   fverb
  #   guitarix
  #   lsp-plugins
  #   x42-plugins
  #   x42-gmsynth
  #   x42-avldrums
  #   chow-tape-model
  #   airwindows-lv2
  #   chow-kick
  #   chow-centaur
  #   chow-phaser
  #   vital
  #   picoloop
  #   sorcer
  #   qjackctl
  #   carla
  #   jackass
  #   oxefmsynth
  #   bespokesynth
  #   bespokesynth-with-vst2
  #   ninjas2
  #   zam-plugins
  #   surge-XT
  # ];
};
}
