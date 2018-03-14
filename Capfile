require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/puma'

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
