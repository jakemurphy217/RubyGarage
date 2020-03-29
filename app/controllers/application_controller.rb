class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def favourite_text
    return @favourite_exists ? "Unfavourite" : "Favourite"
  end



  helper_method :favourite_text
end
