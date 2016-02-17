#set :rails_env, 'production'
#set :deploy_to, '/var/www/rails/kunisakiapp'
#server '52.193.136.123', user: 'kunisakiapp', roles: %w{web app db}
#set :ssh_options, keys: '~/.ssh/kunisakiapp' #ssh_keyの名前は適宜

server   '52.193.136.123',
    user:  'kunisakiapp',
    roles: %w{app db web},
    ssh_options: {
      keys: [
        # for ec2
        File.expand_path('~/.ssh/kunisakiapp'),
        # for github
        File.expand_path('~/.ssh/kunisaki')
      ],
      forward_agent: true,
      auth_methods: %w(publickey)
    }