Sample saucier project
=============================

This is a sample project for [saucier](https://github.com/substantial/saucier)

Usage
======
For initial bootstrapping and deploying:
* `gem install vagrant`
* Spinup the virtual machine: `vagrant up`

Vagrant Note: root username and password is vagrant

* `bundle install`
* `cap bootstrap` - Provided by [cap-strap](https://github.com/substantial/cap-strap)
* `cap provision:setup`
* `librarian-chef install`
* `cap provision`

For updating servers:
* Look in the config/deploy/<stage>.rb and make sure servers that need to be updated aren't commented out.
* `cap provision`

For adding rubies:
* Add desired rubies and patches to deploy.rb and run `cap rvm:install_rubies`

When finished: `vagrant destroy`
