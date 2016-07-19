# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'summerit'
set :repo_url, 'git@github.com:knowit/summerit.backend.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, 'rails'
# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/summerit'

set :rvm_ruby_version, '2.3.1'

set :passenger_restart_with_touch, true

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
:linked_files, fetch(:linked_files, []).push('db/production.sqlite3')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

task :seed do
 puts "\n=== Seeding Database ===\n"
 on primary :db do
  within current_path do
    with rails_env: fetch(:stage) do
      execute :rake, 'db:seed'
    end
  end
 end
end
