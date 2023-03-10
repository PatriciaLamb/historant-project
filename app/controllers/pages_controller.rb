class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @no_navbar = true
  end

  def dashboard
    @places = current_user.places.last(5)
    @menu_items = current_user.menu_items
  end
end
