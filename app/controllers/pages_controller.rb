class PagesController < ApplicationController
  def home
    @message= Message.new
    @registration = Registration.new
  end

  def blog
  end

  def about
  end

end
