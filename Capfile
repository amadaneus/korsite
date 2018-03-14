require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/nginx'
require 'capistrano/puma'
require 'capistrano/puma/nginx'
require 'capistrano/rvm'
require 'capistrano/rails'
require 'capistrano/rails/db'
require 'capistrano/rails/console'
require 'capistrano/upload-config'
require 'sshkit/sudo'
install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Workers
install_plugin Capistrano::Puma::Jungle
install_plugin Capistrano::Puma::Monit
install_plugin Capistrano::Puma::Nginx
install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
