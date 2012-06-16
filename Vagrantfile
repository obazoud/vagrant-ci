# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.forward_port 8080, 8080
  config.vm.forward_port 9000, 9000

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
  #   chef.roles_path = "../my-recipes/roles"
  #   chef.data_bags_path = "../my-recipes/data_bags"
    chef.add_recipe "java"
    chef.add_recipe "git"
    chef.add_recipe "jenkins"
    chef.add_recipe "sonar"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { :mysql_password => "foo" }
    chef.json = {
      :java => {
        :install_flavor => "oracle",
        :java_home => "/usr/local/java",
        :jdk => {
          "6" => {
            :x86_64 => {
              :url => "http://10.0.2.2/chef/jdk-7u5-linux-x64.tar.gz",
              :checksum  => "2a118ce9350d0c0cbaaeef286d04980df664b215d6aaf7bc1d4469abf05711bf"
            }
          }
        }
      },
      :sonar => {
        :version   => "3.1",
        :checksum  => "9c84e876963ae7594a96ca24442e648a",
        :os_kernel => "linux-x86-64"
      }
    }
  end

end
