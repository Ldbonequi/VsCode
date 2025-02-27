
{ config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.bluetooth.enable = true;

  environment.systemPackages = with pkgs; [
    blueman
    bluez #provides bluetoothctl and related utils 
  ];
}