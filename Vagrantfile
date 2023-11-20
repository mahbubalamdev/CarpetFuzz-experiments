
Vagrant.configure("2") do |config|

    config.vm.box = "bento/ubuntu-20.04"
    config.disksize.size = '80GB'
    config.vm.define "carpetfuzz" do |carpetfuzz|
      carpetfuzz.vm.hostname = "carpetfuzz"
  
      carpetfuzz.vm.network "private_network", ip: "192.168.56.10"
      
      carpetfuzz.vm.synced_folder ".", "/CarpetFuzz-experiments"
      carpetfuzz.vm.synced_folder ".", "/vagrant", disabled: true
      carpetfuzz.vm.provision "shell", path: "bootstrap.sh"
      carpetfuzz.vm.provider "virtualbox" do |vb|
        vb.name = "carpetfuzz"
        vb.memory = "32768"
        vb.cpus = "20"
      end
    end
  end
  