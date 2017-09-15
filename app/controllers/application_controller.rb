class ApplicationController < ActionController::Base
  before_action :initiate_cart
  protect_from_forgery with: :exception

  def initiate_cart
    @card = ShoppingCart.new(session)
  end

end
