Requirements
============

* Install Vagrant
* Install [git-external](https://github.com/dcestari/git-external)

Startup
=======

In order to launch the VM, git clone this repository and do (inside the directory):

<pre>
git clone git://github.com/obazoud/vagrant-ci.git
cd vagrant-ci
git external init
vagrant box add precise64 http://files.vagrantup.com/precise64.box
vagrant up
</pre>

Setup
=====

