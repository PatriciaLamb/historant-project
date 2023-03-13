class PlacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @places = current_user.places
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def show
    @place = Place.find(params[:id])
    @menu_items = @place.menu_items
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to place_path(@place)
      flash.now[:success] = "The Place has been created"
    else
      flash.now[:error] = "Your data is not saved. Please provide valid data and try again."
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
    params.require(:place).permit(:name, :address, :cuisine, :category)
  end
end
