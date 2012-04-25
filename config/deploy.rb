set :default_stage, "vagrant"
set :stages, %w(vagrant)

require 'capistrano/ext/multistage'
require 'cap-strap'
require 'saucier'

set :application, "teamcity-build-agent"
set :repository, "repo_location"

set :deploy_user, "deploy"

# NOTE: it's not recommended to include keys in the repo
set :authorized_keys_file, "config/authorized_keys"
set :deploy_key_file, "config/deploy-key"

set :chef_deploy_to, "/etc/chef"

set :default_ruby, "1.9.3-p125-perf"
set :rubies, [
              "1.9.3-p125",
              {
                :version => "1.9.3-p125-perf",
                :patch => "falcon,debug --force-autoconf -j 3"
              }
             ]

set :chef_ruby, "1.9.3-p125-perf"
set :chef_gemset, "chef"

# below are the default values. only showing that they're configurable
# set :chef_solo_config, ".chef/solo.rb"
# set :chef_node_config, ".chef/node.json"
set :user, "deploy"
set :group, "rvm"

ssh_options[:forward_agent] = true

set :scm, :git
set :deploy_via, :remote_cache
