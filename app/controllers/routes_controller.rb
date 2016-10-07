class RoutesController < ApplicationController

  def new
  end

  def create
    addressid = set_address(params['address'])
    @route = Route.create(route_params)
    @route.update(user_params)
    if @user.errors.any?
      flash[:errors] = @route.errors.full_messages
      redirect_to :back
    else
      redirect_to "/routes/"
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def address (route)
    @route = Route.find(route.id)
    addresscreator = "#{params[:address]}}"
    addressid = set_address addresscreator
    @route.update(address_id: addressid)
    redirect_to :back
  end
  private
    def route_params
      params.require(:route).permit(:name, :description, :difficulty, :speed, :user_id, :route)
    end
    def set_address address
      check = Address.find_by address: addresscreator
      unless check 
        check = Address.create(address: addresscreator)
      end
      return check.id
    end
end
