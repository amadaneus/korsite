class Admin::ApplicationController < ActionController::Base
  protect_from_forgery
  include 'DeviseWhitelist'
  layout 'admin/application'
end
