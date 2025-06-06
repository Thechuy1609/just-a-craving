class Admin::LocationsController < Admin::BaseController
  def index
    @locations = Location.all
  end
end
