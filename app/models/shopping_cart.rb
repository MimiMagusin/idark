class ShoppingCart
  attr_reader :order_lines

  def initialize(session = {})
    @session = session
    @session_lines = session[:ShoppingCart] || []
    @order_lines = @session_lines.map do |line|
      Orderline.from_hash(line)
    end
  end

  def add_product(product, amount = 1)
    raise ArgumentError.new("this is no product") unless product_is_a?(Product)

    @order_lines << Orderline.new(product, amount)
    store!
  end

  def store!
    @session_lines = @order_lines.map do |line|
      line.to_hash
    end
  end

  class Orderline
    attr_accessor :added_at, :price
    attr_reader :product, :amount

    def initialize(product, amount)
      @product = product
      @amount = amount
      @product_id = product.id
      @added_at = added_at
      @price = product.price
    end

    def to_hash
      {
        product_id: @product_id,
        amount: @amount,
        added_at: @added_at,
        price: @price
      }
    end

    def self.from_hash(line_hash)
      product = Product.where(id: line_hash[:product_id]).first
      return if product.nil?

      order_line = Orderline.new(product, line_hash[:amount])
      order_line.added_at = line_hash[:added_at]
      order_line.price = line_hash[:price]
    end
  end

end
