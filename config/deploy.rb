require 'bundler/capistrano'

# set :whenever_command, "bundle exec whenever"
# require 'whenever/capistrano'

set :application, "server_alert"
set :repository,  "git@github.com:shobhavenk/server_alert.git"
set :deploy_via, :remote_cache
set :scm, :git

set :scm_username, 'shobhavenk'
set :use_sudo, false
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]

def aws_staging name
  task name do
    yield 
    set :branch, "master"   
    set :default_environment, { "PATH" =>
    "/rails/common/ruby-1.9.2-p290/bin:#{deploy_to}/shared/bundle/ruby/1.9.1/bin:$PATH",
    "LD_LIBRARY_PATH" => "/rails/common/oracle/instantclient_11_2",
    "TNS_ADMIN" => "/rails/common/oracle/network/admin" }
    role :app, location
    role :web, location
    role :db, location, :primary => true
    set :user, 'rails'
    ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
  end
end

aws_staging :ec2_staging do
  set :branch, "master"
  set :application, "server_alert"
  set :deploy_to, "/rails/apps/server_alert"
  set :location, "107.23.108.186"
end

namespace :deploy do
  after "deploy:update_code" do
    run "cp #{deploy_to}/shared/database.yml #{release_path}/config/database.yml"
  end

  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
