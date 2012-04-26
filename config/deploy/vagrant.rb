
set :deploy_user, 'deploy'
# Using authorized keys is prefered to using a deploy password
set :deploy_user_password,'vagrant'

set :user, deploy_user
set :password, deploy_user_password

set :bootstrap_user, "vagrant"
set :bootstrap_password,"vagrant"

# It's not recommended to include keys in the repo
set :authorized_keys_file, "config/authorized-keys"
set :deploy_key_file, "config/deploy-key"
set :port, 2222

server "localhost", :app, {
  :node_name => 'vagrant-node',
}
