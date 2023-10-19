{ config, pkgs, ... }:

{
  # dockerとdocker-composeを有効化
  # ※vagrantユーザーでコマンド叩けるようにdockerグループに追加
  virtualisation.docker.enable = true;
  users.users.vagrant.extraGroups = [ "docker" ];
  environment.systemPackages = with pkgs; [
    docker-compose
  ];
  # nixos-rebuild switch を実行するとマウントが解除されるため明示的にマウント
  fileSystems."/vagrant" = {
    device = "vagrant";
    fsType = "vboxsf";
    options = ["rw" "nodev" "relatime" "iocharset=utf8" "uid=1000" "gid=994" "_netdev"];
  };
}
