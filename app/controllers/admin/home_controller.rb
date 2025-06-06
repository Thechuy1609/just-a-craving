class Admin::HomeController < Admin::BaseController
  def index
    @products = Product.all
    @locations = Location.all
    @messages = Message.all
  end
end
