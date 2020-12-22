# ログイン管理する

class SessionsController < ApplicationController
  def new
  end

  # ログインの検証とセッションの生成
  # ログイン画面で「ログイン」ボタンをクリックした場合のPOSTリクエストのアクション
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
  
  # ログアウト
  # 保存していたセッション情報をnilで上書きして空にすることで、セッションを無効にしている
  def destroy
    session[:user_password] = nil                 # セッション情報を削除
    redirect_to login_path                        # ログイン画面へ遷移
  end

end

