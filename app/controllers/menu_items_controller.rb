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

  def edit
    @menu_item = current_user.menu_items.find(params[:id])
    render :edit
  end

  def update
    @menu_item = current_user.menu_items.find(params[:id])
    if @menu_item.update(menu_params)
      flash[:success] = "The menu item has been updated"
      redirect_to menu_item_path(@menu_item)
    else
      flash[:error] = "Your data is not saved. Please provide valid data and try again."
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @menu_item = MenuItem.new(menu_params)
    @menu_item.place = @place
    if @menu_item.save
      flash.now[:success] = "The menu item has been created"
      redirect_to menu_item_path(@menu_item)
    else
      flash.now[:notice] = "Your data is not saved. Please provide valid data and try again."
      render :new, status: :unprocessable_entity
    end
    raise
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to dashboard_path
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def menu_params
    params.require(:menu_item).permit(:category, :name, :price, :visit_date, :rating, :description, :photo)
  end
end
