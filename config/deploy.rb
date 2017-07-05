# config valid only for current version of Capistrano
lock "3.8.2"

set :application, "health_schedule"
set :repo_url, "https://github.com/hllanes08/healt_schedule.git"
set :deploy_to, "/var/www/health_schedule"
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
set :branch, 'master'
set :deploy_via, :copy
set :user, 'centos'
set :ssh_options, { forward_agent: true, port: 22 }
set :passenger_restart_with_touch, true

