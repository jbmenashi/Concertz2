class UsersController < ApplicationController
  before_action  :find_user, only: [:show, :update, :edit, :destroy]

  def index
    @users = User.all
  end


  def show
  end


  def new
    @user=User.new
  end

  def login
    #code
  end

  def authorize
    @user = User.find_or_create_by(username: params[:username])

    session[:user_id] = @user.id
  end


  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end


  def edit
  end


  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end


  def destroy
    @user.destroy
    redirect to users_path
  end




private

def user_params
  params.require(:user).permit(:username, :password, :name, :bio, :age, :image)
end

def find_user
  @user = User.find(params[:id])
end



end
