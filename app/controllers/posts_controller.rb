class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def create
    post = Post.new(
      user_id: params[:user_id], 
      content: params[:content]
    )
    if post.save
      redirect_to("/posts/index")
    else
      render("/posts/new")
    end
  end
end
