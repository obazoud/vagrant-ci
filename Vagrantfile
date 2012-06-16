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
              :url => "http://10.0.2.2/chef/jdk-6u30-linux-x64.bin"
            }
          }
        }
      }
    }
  end

end
