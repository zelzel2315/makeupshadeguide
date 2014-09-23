class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # def header
  #   @has_navbar = true
  #   @user_login = User.new
  #   @is_login = true
  # end

  def default_serializer_options
    { root: false }
  end
end
