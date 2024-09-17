class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_admin?
    redirect_to songs_path unless AdminUser.all.include?(self)
  end 
end
