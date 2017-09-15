class Api::ShoppingcartController < ApplicationController

  def index
    render status: 200, json: {
      shoppingcart: @session_lines
    }.to_json
  end

  def create
  

  end

  def destroy

  end

end
