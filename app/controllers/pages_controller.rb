#ログインページ

class PagesController < ApplicationController
  def index
  end

  def create
    user = User.find_by(ID: params[:session][:ID])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインできません'
      render :index
    end
  end

  private
  def log_in(user)
    session[:user_id] = user.id
  end

end
