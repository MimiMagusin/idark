class ProductsController < ApplicationController
  before_action :set_catalogue

  def show
    @product = Product.find(params[:id])
  end

  private

  def set_catalogue
    @catalogue = Catalogue.find(params[:catalogue_id])
  end

end
