# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.forward_port 8080, 8080
  config.vm.forward_port 9000, 9000

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe "mysql::server"
    chef.add_recipe "git"
    chef.add_recipe "java"
    chef.add_recipe "jenkins"
    chef.add_recipe "sonar"
    chef.add_recipe "sonar::database_mysql"

    chef.json = {
      :java => {
        :install_flavor => "oracle",
        :jdk_version => "7",
        :jdk => {
          "7" => {
            :x86_64 => {
              :url => "http://10.0.2.2/chef/jdk-7u5-linux-x64.tar.gz",
              :checksum  => "2a118ce9350d0c0cbaaeef286d04980df664b215d6aaf7bc1d4469abf05711bf"
            }
          }
        }
      },
      :jenkins => {
        :mirror_url => "http://mirrors.jenkins-ci.org/war"
      },
      :mysql => {
        :server_debian_password => "root",
        :server_root_password => "root",
        :server_repl_password => "root",
        :bind_address => "0.0.0.0"
      },
      :sonar => {
        :version   => "3.1.1",
        :checksum  => "9606c6f6c79c6b944d9d4a7c5eb6531b",
        :os_kernel => "linux-x86-64",
        :jdbc_url => "jdbc:mysql://localhost:3306/sonar",
        :jdbc_driverClassName => "com.mysql.jdbc.Driver",
        :jdbc_validationQuery => "select 1"
      }
    }
  end

end
