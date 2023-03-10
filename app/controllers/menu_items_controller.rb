class MenuItemsController < ApplicationController
  before_action :set_place, only: [:new, :create]

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def index
    @menu_items = current_user.menu_items
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_params)
    @menu_item.place = @place
    if @menu_item.save
      redirect_to menu_item_path(@menu_item)
      flash.now[:success] = "The menu item has been created"
    else
      render :new, status: :unprocessable_entity
      flash.now[:error] = "Your data is not saved. Please provide valid data and try again."
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to dashboard_path  # needs to be directed to dashboard page
    flash.now[:success] = "The menu item has been deleted"
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def menu_params
    params.require(:menu_item).permit(:category, :name, :price, :visit_date, :rating, :description, :photo)
  end
end
