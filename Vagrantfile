Vagrant.configure("2") do |config|
  config.vm.box = "hennersz/nixos-23.05-flakes"

  # NixOSのリビルド
  config.vm.provision "shell", inline: <<-SHELL
    cp "/vagrant/custom-configuration.nix" "/etc/nixos/custom-configuration.nix"
    nixos-rebuild switch
  SHELL
end
