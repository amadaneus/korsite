module DeviseRedirect
  ActiveSupport::Concern

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      admin_dashboard_path
    end
  end
end