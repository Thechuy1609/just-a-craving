class HomeController < ApplicationController
  def index
    @reviews = Location.first.reviews
  end
end
