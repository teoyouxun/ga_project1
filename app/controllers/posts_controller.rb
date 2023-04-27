class PostsController < ApplicationController
  before_action :check_for_login
  before_action :check_post_ownership, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

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

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title)
  end

  def check_post_ownership
    post = Post.find(params[:id])
    unless post.user == @current_user
      flash[:alert] = "You don't have access to this post."
      redirect_to post_path(post.id) 
    end
  end
end