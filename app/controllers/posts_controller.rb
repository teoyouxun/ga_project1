class PostsController < ApplicationController
  before_action :check_for_login

  def new
    @post = Post.new
  end

  def create
    post = Post.create post_params
    @current_user.posts << post
    
    redirect_to posts_path 
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post
  end

  def show
    @post = Post.find params[:id]
  end

  def like
    @post = Post.all.find(params[:id])
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title)
  end
end
