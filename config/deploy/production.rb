set :rails_env, 'production'
set :deploy_to, '/var/www/rails/kunisakiapp'
server '52.193.136.123', user: kunisakiapp, roles: %w{app db web}
