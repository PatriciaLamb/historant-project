class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @no_navbar = true
    redirect_to dashboard_path if user_signed_in?
  end

  def profile
    @user = current_user
  end

  def dashboard
    @places = current_user.places.last(5)
    @menu_items = current_user.menu_items.last(5)
    time_greeting
  end

  def time_greeting
    hour = Time.now.hour

    if hour < 12
      @greeting = "Good morning,"
    elsif hour > 12
      @greeting = "Good afternoon,"
    elsif hour >= 18
      @greeting = "Good evening,"
    end
  end

  def map
    @places = current_user.places
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_windows_html: render_to_string(partial: "info_windows", locals: { place: place }),
        marker_html: render_to_string(partial: "marker", locals: { place: place })
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
