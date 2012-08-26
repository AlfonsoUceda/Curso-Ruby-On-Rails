class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :logged_in?, :current_user

  before_filter :login_required

  def logged_in?    
    session[:user_id] ? true : false
  end

  def current_user
    if logged_in?
      @current_user = User.find session[:user_id]
    end
  end

  private

  def login_required
    unless logged_in?
       redirect_to login_url
    end
  end

end
