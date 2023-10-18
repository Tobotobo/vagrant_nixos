# vagrant_nixos

```
vagrant up
vagrant ssh
```

```
Password:vagrant
```

nix-shellでnodejsの切り替えを実現する  
https://blog.tomoyukim.net/entry/nix-shell-nodejs/


NixOS Search - Packages  
https://search.nixos.org/packages

```
cd /vagrant/nodejs_18_example
nix-shell
node --version
```

- 停止：`vagrant halt`
- 再起動：`vagrant reload`
- 削除：`vagrant destroy`
```

vagrant status
vagrant destroy
```

/etc/nixos/configuration.nix


Docker有効化　※とりあえず有効化してみただけ※vagrant sshでログイン後
```
sudo nano /etc/nixos/custom-configuration.nix 
sudo nixos-rebuild switch
```
```
～～～～～～～～
{
  virtualisation.docker.enable = true;
}
```

↓を改造すれば自動化できると思われ
```
Vagrant.configure("2") do |config|
  config.vm.box = "nixos/nixos-x86_64"  # ベースとなるNixOSのbox

  # SSHでの接続設定
  config.ssh.insert_key = false
  config.ssh.username = "root"
  config.ssh.password = "root"

  # configuration.nixをコピーするプロビジョニングスクリプト
  config.vm.provision "file", source: "./path/to/your/configuration.nix", destination: "/etc/nixos/configuration.nix"

  # NixOSのリビルド
  config.vm.provision "shell", inline: <<-SHELL
    nixos-rebuild switch
  SHELL
end

```