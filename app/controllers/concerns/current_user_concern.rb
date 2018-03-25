module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    OpenStruct.new(name: "Guest User",
                   email: "guest@users.com"
                   )
  end
end