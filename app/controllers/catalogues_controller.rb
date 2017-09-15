class CataloguesController < ApplicationController
  before_action :authenticate_user!

  def index
    
  end

  def show
    @products = Product.all
    @products = if params[:term]
      @products.where('name LIKE ?', "%#{params[:term]}%")
    else
      Product.all
    end
  end


  def product_params
    params.require(:product).permit(:term)
  end



end
