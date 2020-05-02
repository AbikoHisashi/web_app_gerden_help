# coding: utf-8
class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def create
    @post = Post.new(
      user_id: params[:user_id], 
      content: params[:content]
#      image: params[:image]
    )
    if @post.save
      flash[:notice] = "投稿できました"
      redirect_to("/posts/index")
    else
      render("/posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id] )
  end

  def update
    @post = Post.find_by(id: params[:id] )
    @post.content = params[:content]
    # if params[:image]
    #   post.image = params[:image]
    # end
    
    if @post.save
      flash[:notice] = "編集できました"
      redirect_to("/posts/index")
    else
      render("/posts/edit")
    end
  end
  
  def destroy
    post = Post.find_by(id: params[:id] )
    post.destroy
    flash[:notice] = "削除できました"
    redirect_to("/posts/index")
  end
end
