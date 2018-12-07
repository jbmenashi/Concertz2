class UsersController < ApplicationController
  skip_before_action :authorized, only: [:login, :authorize, :new, :create]

  def index
    @users = User.all
  end


  def show
    @user = User.find_by(id: params[:id])
    render layout: 'user_show'
  end


  def new
    @user=User.new
    render layout: 'new'
  end

  def login
    render layout: 'login'
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      # add session
      login_user(@user)
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def authorize
    @user = User.find_or_create_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = "incorrect dummy"
      redirect_to login_path
  end
end

  def edit
    @user = session_user
    render layout: 'user_edit'
  end


  def update
    @user = session_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end


private

def user_params
  params.require(:user).permit(:username, :password, :name, :bio, :image, :age)
end

def find_user
  @user = User.find(params[:id])
end



end
