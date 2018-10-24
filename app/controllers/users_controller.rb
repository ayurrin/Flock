class UsersController < ApplicationController
  def login
  end
  def login_form
  end
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def logout
  end

end
