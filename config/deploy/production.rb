set :stage, :production
set :rails_env, 'production'

set :nginx_server_name, 'project2030.org'
set :nginx_use_ssl, false

set :pg_database, 'update_nuia_com_production'
set :pg_user, 'postgres'

server 'project2030.org',
       user: 'deployer',
       roles: %w{web app db},
       ssh_options: {
         keys: %w(~/Development/4tiitoo/amazon_ec2/AWSFlorianHeinle.pem),
         # keys: %w(/home/user_name/.ssh/id_rsa),
         forward_agent: true,
         auth_methods: %w(publickey password)
       }
