class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    if session[:camp_id]
      Camp.find(session[:camp_id])
    else
      Camp.new
    end
  end

  def logged_in?
    !!current_user.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You aren't logged in"
      redirect_to login_path and return
    end
  end

  def authorized_for(camp_id)
    if current_user.admin == true
      true
    elsif current_user.id != camp_id.to_i
      flash[:authorized] = "You can't view a page that doesn't belong to you!"
      redirect_to current_user
    end
  end
end
