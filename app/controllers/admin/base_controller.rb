class Admin::BaseController < ActionController::Base
  # use an admin-specific layout instead of the main application layout
  layout "admin"

  # all child controllers will automatically enforce access to admins only
  before_action :authenticate_admin_user!

  def current_ability
    @current_ability ||= Ability.new(current_admin_user)
  end
end