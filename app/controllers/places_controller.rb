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
      # @attributes = params["place"]["menu_items_attributes"]["0"]
      # @menu_item = MenuItem.new(
      #   name: @attributes["name"],
      #   category: @attributes["category"],
      #   price: @attributes["price"],
      #   visit_date: Date.parse("#{@attributes["visit_date(3i)"]}-#{@attributes["visit_date(2i)"]}-#{@attributes["visit_date(1i)"]}"),
      #   rating: @attributes["rating"],
      #   description: @attributes["description"],
      #   photo: @attributes["photo"]
      # )
      # @menu_item.place = @place
      # @menu_item.save!
      redirect_to place_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
  end

    # @menu_item = MenuItem.new(menu_params)

    # respond_to do |format|
    #   unless @menu_item.nil?
    #     @place.menu_item = @menu_item
    #     if @place.valid?
    #       @menu_item.save
    #       @place.save
    #       # flash.now[:success] = "Place has been created."
    #       # redirect_to place_path(@place)
    #     else
    #       flash.now[:error] = "Unable to create place. Something went wrong."
    #       render :new, status: :unprocessable_entity
    #     end
    #   else
    #     puts "Unable to create menu item."
    #     @menu_item.errors.full_messages.each do |mes|
    #       puts mes
    #     end
    #     format.html { render :new }
    #     format.json { render json: @menu_item.errors, status: :unprocessable_entity }
    #   end
    # end

  def destroy
    @place = current_user.Place.find(params[:id])
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

  #   if @place.save
  #     redirect_to place_path(@place)
  #     flash.now[:success] = "The Place has been created"
  #   else
  #     flash.now[:error] = "Your data is not saved. Please provide valid data and try again."
  #     render :new, status: :unprocessable_entity
  #   end
