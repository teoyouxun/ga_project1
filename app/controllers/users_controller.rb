class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_back @post
    else
      render :new
    # redirect_to root_path
    end
  end
   
  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

 # user = User.create user_params
    # if params[:file].present?
    #   req = Cloudinary::Uploader.upload(params[:file])
    #   user.image = req["public_id"]
    #   user.save

  # end
  # redirect_to user