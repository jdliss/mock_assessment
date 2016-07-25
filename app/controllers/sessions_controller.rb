class SessionsController < ApplicationController
  def new
  end

  def create
   user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "logged in!"
      redirect_to '/'
    else
      flash[:error] = "invalid login"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
