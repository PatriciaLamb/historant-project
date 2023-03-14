class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @no_navbar = true
  end

  def profile
    @user = current_user
  end

  def dashboard
    @places = current_user.places.last(5)
    @menu_items = current_user.menu_items
  end

  def map
    @places = current_user.places
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_windows_html: render_to_string(partial: "info_windows", locals: {place: place}),
        marker_html: render_to_string(partial: "marker", locals: {place:place})
      }
    end
  end

  def search
    if params[:query].present?
      @menu_items = MenuItem.global_search(params[:query])
      if @menu_items.empty?
        flash.now[:notice] = "No results found for '#{params[:query]}'!"
      end
    else
      @menu_items = MenuItem.all
    end
  end
end
