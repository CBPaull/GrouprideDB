class UsersController < ApplicationController
  def create
    addresscreator = "#{params[:street]}, #{params[:city]}, #{params[:state]}"
    addressid = set_address addresscreator
    @user = User.create(user_params)
    @user.update(address_id: addressid)
    if @user.errors.any?
      flash[:errors] = @user.errors.full_messages
      return :back
    else
      redirect_to users_path
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(session[:user_id])
    @user.update(user_params)
    if @user.errors.any?
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    else
      session[:user_id] = @user.id
      redirect_to "/users/#{session[:user_id]}"
    end
  end
  def address
    @user = User.find(session[:user_id])
    addresscreator = "#{params[:street]}, #{params[:city]}, #{params[:state]}"
    addressid = set_address addresscreator
    @user.update(address_id: addressid)
    redirect_to :back
  end

  def destroy
  end
  private
    def user_params
      params.require(:user).permit(:nickname, :first_name, :last_name, :email, :experience, :description, :motorcycles, :password)
    end
    def set_address addresscreator
      check = Address.find_by address: addresscreator
      unless check 
        check = Address.create(address: addresscreator)
      end
      return check.id
    end

end
