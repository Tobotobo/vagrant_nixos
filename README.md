# vagrant_nixos

```
winget install Oracle.VirtualBox
winget install Hashicorp.Vagrant
```

```
vagrant up
vagrant ssh
```

```
>vagrant ssh
Last login: Wed Oct 18 14:40:42 2023 from 10.0.2.2

[vagrant@nixbox:~]$ docker --version
Docker version 20.10.25, build v20.10.25

[vagrant@nixbox:~]$ docker-compose --version
Docker Compose version 2.18.1
```
※課題：docker は使えるようになるが /vagrant のマウントが外れてしまう


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
vagrant reload --provision
vagrant status
vagrant destroy
```

【まとめ】Vagrant コマンド一覧  
https://qiita.com/oreo3/items/4054a4120ccc249676d9

Docker on NixOS  
https://nixos.wiki/wiki/Docker

Docker-compose on nixos  
https://discourse.nixos.org/t/docker-compose-on-nixos/17502

