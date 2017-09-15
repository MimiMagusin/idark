class CataloguesController < ApplicationController
  before_action :authenticate_user!

  def index
    
  end

  def show
    @products = Product.all
  end


end
