class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def create
    @post=Post.new
  end
  def preview
  end
  def complete
  end
  def edit
    @post=Post.find_by(id: params[:id])
  end
  def show

    @post= Post.find_by(id: params[:id])
  end
  def create2
    @post = Post.new(content: params[:content], title: params[:title])
    if @post.save
      flash[:notice]="投稿を作成しました"
      redirect_to("/posts")
    else
      render("posts/create")
    end
  end
  def destroy
    @post=Post.find_by(id: params[:id])
    if @post.destroy
      flash[:notice]="投稿を削除しました"
      redirect_to("/posts")
    end
  end
  def update
    @post = Post.find_by(id: params[:id])
    @post.content=params[:content]
    @post.title = params[:title]
    if @post.save
      flash[:notice]="投稿を編集しました"
      redirect_to("/posts")
    else

      render("posts/edit")
    end
  end

end
