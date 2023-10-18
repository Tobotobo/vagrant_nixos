{ config, pkgs, ... }:

{
    virtualisation.docker.enable = true;
    users.users.vagrant.extraGroups = [ "docker" ];
    environment.systemPackages = with pkgs; [
      docker-compose
    ];
}
