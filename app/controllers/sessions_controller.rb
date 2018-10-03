class SessionsController < ApplicationController
  def new
  end

  def create
    camp = Camp.find_by(username: params[:username])
    if camp && camp.authenticate(params[:password])
      session[:camp_id] = camp.id
      redirect_to camp
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:camp_id] = nil
    redirect_to login_path
  end
end
