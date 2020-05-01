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
      render("/posts/edit")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id] )
  end

  def update
    post = Post.find_by(id: params[:id] )
    post.content = params[:content]
    post.id = params[:id]
    if post.save
      redirect_to("/posts/index", {method:post})
    else
      redirect_to("/posts/index", {method:post})
    end
  end
  
  def destroy
    post = Post.find_by(id: params[:id] )
    post.destroy
    redirect_to("/posts/index")
  end
end
