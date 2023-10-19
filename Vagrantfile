Vagrant.configure("2") do |config|
  config.vm.box = "hennersz/nixos-23.05-flakes"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  # NixOSのリビルド
  config.vm.provision "shell", inline: <<-SHELL
    cp "/vagrant/custom-configuration.nix" "/etc/nixos/custom-configuration.nix"
    nixos-rebuild switch
  SHELL
end
