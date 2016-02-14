set :rails_env, 'production'
set :deploy_to, '/var/www/rails/kunisakiapp'
server '52.193.136.123', user: 'kunisakiapp', roles: %w{app}
set :ssh_options, keys: '~/.ssh/kunisaki' #ssh_keyの名前は適宜