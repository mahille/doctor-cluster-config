{
  pkgs,
  lib,
  ...
}: {
  imports = [
    ../modules/ipmi.nix
    ../modules/k3s/agent.nix
    ../modules/hardware/poweredge-r440.nix
  ];

  networking.hostName = "dan";

  system.stateVersion = "21.11";
}
