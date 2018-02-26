class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authenticate_admin_user!
    raise SecurityError unless current_user.try(:admin?)
  end

  def after_sign_in_path_for(user)
    user.admin? ? admin_dashboard_path : root_path
  end
end
