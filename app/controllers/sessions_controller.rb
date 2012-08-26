class SessionsController < ApplicationController

  skip_before_filter :login_required, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to products_path
    else
       flash.now.alert = "Incorrect credentials"
       render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
