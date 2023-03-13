class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @no_navbar = true
  end

  def dashboard
    @places = current_user.places.last(5)
    @menu_items = current_user.menu_items
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
