{
  pkgs,
  lib,
  ...
}: {
  imports = [
    ../modules/hardware/supermicro-x12spw-tf.nix
    ../modules/nfs/client.nix
    ../modules/dax.nix
  ];

  doctorwho.pmem.devices = [ "pmem0" ];

  networking.hostName = "christina";

  system.stateVersion = "21.11";
}
