set :default_stage, "vagrant"
set :stages, %w(vagrant)

require 'capistrano/ext/multistage'
require 'cap-strap'
require 'saucier'

set :application, "teamcity-build-agent"
set :repository, "https://github.com/substantial/saucier-example"

set :group, "rvm"

set :chef_deploy_to, "/etc/chef"

set :default_ruby, "1.9.3-p125"
set :rubies, [
              "1.9.3-p125",
              {
                :version => "1.9.3-p125-perf",
                :patch => "falcon,debug --force-autoconf -j 3"
              }
             ]

# default is the default ruby
set :chef_ruby, "1.9.3-p125-perf"
# default is global
set :chef_gemset, "chef"

# below are the default values. only showing that they're configurable
# set :chef_solo_config, ".chef/solo.rb"
# set :chef_node_config, ".chef/node.json"

ssh_options[:forward_agent] = true

set :scm, :git
set :deploy_via, :remote_cache
