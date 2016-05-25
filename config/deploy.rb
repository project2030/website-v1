set :user, 'deployer'
set :application, 'project_2030'
set :repo_url, 'git@github.com:project2030/website-v1.git'

set :deploy_to, "/home/#{fetch(:user)}/webapps/#{fetch(:application)}"

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/#{fetch(:user)}/webapps/#{fetch(:application)}"

set :scm, :git
# Default value for :format is :pretty
# set :format, :pretty

# PG
# set :pg_ask_for_password, true

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true
set :pty, false

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/sockets', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# If you need to touch public/images, public/javascripts, and public/stylesheets on each deploy
# set :normalize_asset_timestamps, %{public/images public/javascripts public/stylesheets}
set :normalize_asset_timestamps, %{ public/assets }

set :keep_releases, 5

# rbenv
set :rbenv_ruby, '2.3.0'
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all
