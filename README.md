Sample saucier project
=============================

Usage
======
For initial bootstrapping and deploying:

Vagrant Note: root username and password is vagrant
* `cap bootstrap -s user=vagrant` - This is provided by cap-strap

* `cap provision:setup`
* `cap provision`

For updating servers:
* Look in the config/deploy/<stage>.rb and make sure servers that need to be updated aren't commented out.
* `cap provision`

For adding rubies:
* Add desired rubies and patches to deploy.rb and run `cap rvm:install_rubies`
