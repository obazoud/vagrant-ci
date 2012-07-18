#!/bin/bash
if [ ! -d '/opt/vagrant_ruby/lib/ruby/gems/1.8/gems/chef-10.12.0' ]; then
  echo "Updating Chef Solo..."
  sudo apt-get install make --yes
  time gem install -no-rdoc --no-ri chef
else
  echo "Skipping Chef Solo update."
fi

