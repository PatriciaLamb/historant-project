class PlacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @places = current_user.places
  end

  def edit
    @places = current_user.places.find(params[:id])
  end

  def update
    @places = current_user.places.find(params[:id])
    if @places.update(place_params)
      flash[:success] = "The place has been updated"
      redirect_to places_path(@places)
    else
      flash[:error] = "Your data is not saved. Please provide valid data and try again."
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @place = Place.find(params[:id])
    @menu_items = @place.menu_items
  end

  def new
    @place = Place.new
    @categories = %w[Bakery Bar Buffet Cafe Food\ Truck Patisserie Restaurant Other]
    @place.menu_items.build
  end

  def add_item
    @place = Place.new(place_params.merge({ id: params[:id] }))
    @place.menu_items.build
    render :new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save!
      redirect_to place_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

  private

  def place_params
    params
      .require(:place)
      .permit(:name, :address, :cuisine, :category,
       menu_items_attributes: [:id, :name, :category, :price, :visit_date, :rating, :description, :photo])
  end
end
