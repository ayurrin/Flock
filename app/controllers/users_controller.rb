class UsersController < ApplicationController
  before_action :authenticate_user, {only:[:index]}
  def login
  end
  def login_form
  end
  def index

    @user = Login.find_by(id: params[:id])
    @posts = Post.where(user_id: @user.id)

  end
  def logout
    session[:user_id] = nil
    flash[:notice]="ログアウトしました"
    redirect_to("/")
  end

end
