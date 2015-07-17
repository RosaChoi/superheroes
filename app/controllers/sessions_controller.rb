class SessionsController < ApplicationController

  def login
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to teams_path
    else
      render :signup
    end
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(username: params[:username]).first
      if found_user && found_user.authenticate(params[:password])
        session[:user_id] = found_user.id
        redirect_to teams_path
      else
        flash[:alert] = "username / password combination is invalid"
        redirect_to login_path
      end
    else
      flash[:alert] = "please enter username and password"
      redirect_to login_path
    end
  end

  def logout
    # session.clear
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :avatar_url
    )
  end
end
