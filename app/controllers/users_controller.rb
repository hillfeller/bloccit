class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

  @user = User.new
  @user.name = params[:user][:name]
  @user.email = params[:user][:email]
  @user.password = params[:user][:password]
  @user.password_confirmation = params[:user][:password_confirmation]


    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      redirect_to root_path
    else
      flash[:error] = "There was an error creating your account. Please try again."
      render :new
    end
  end

  def confirm

  @user = User.new
  @user.name = params[:user][:name]
  @user.email = params[:user][:email]
  @user.password = params[:user][:password]
  @user.password_confirmation = params[:user][:password_confirmation]


    if @user.save
      flash[:notice] = "Account information has been confirmed!"
      render @users
    else
      flash[:error] = "You have chosen not to confirm this information."
      render :new
    end
  end

  def destroy
    @user = Topic.find(params[:id])

    if @user.destroy
      flash[:notice] = "\"#{@user.name}\" was deleted successfully."
      redirect_to topics_path
    else
      flash[:error] = "There was an error deleting the user."
      render :show
    end
  end
end
