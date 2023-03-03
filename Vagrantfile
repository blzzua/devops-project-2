Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.synced_folder "./app", "/app"
  config.vm.provision "file", source: "requirements.txt", destination: "~/requirements.txt"
  config.vm.provision "file", source: "app.service", destination: "~/app.service"
  config.vm.provision "shell", path: "provision.sh"
end
