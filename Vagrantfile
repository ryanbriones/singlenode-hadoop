# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "singlenode-hadoop"
  config.vm.box = "precise64"
  
  config.vm.network :private_network, type: "dhcp"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.berkshelf.enabled = true
  
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      java: {
        install_flavor: "oracle",
        jdk_version: 7,
        oracle: { accept_oracle_download_terms: true  }
      },
      
      hadoop: { 
        distribution: "cdh",
        hdfs_site: {
          "dfs.namenode.name.dir" => "/data/hadoop/dfs/name",
          "dfs.datanode.data.dir" => "/data/hadoop/dfs/data",
        }
      }
    }

    chef.run_list = [
        "recipe[singlenode-hadoop::default]"
    ]
  end
end
