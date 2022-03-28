# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = ["xhci_pci" "ahci" "mpt3sas" "usb_storage" "usbhid" "sr_mod"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = [];
  boot.extraModulePackages = [];

  fileSystems."/" = {
    device = "zroot/root/nixos";
    fsType = "zfs";
  };

  fileSystems."/boot/EFI" = {
    device = "/dev/disk/by-uuid/0D40-D110";
    fsType = "vfat";
  };

  fileSystems."/old-home" = {
    device = "zroot/root/home";
    fsType = "zfs";
  };

  fileSystems."/scratch2" = {
    device = "/dev/disk/by-uuid/d45731c3-7b21-41e9-8ef1-a072255a5d2d";
    fsType = "ext4";
    options = ["nofail"];
  };

  fileSystems."/tmp" = {
    device = "zroot/root/tmp";
    fsType = "zfs";
  };

  swapDevices = [];

  powerManagement.cpuFreqGovernor = lib.mkDefault "ondemand";
}
