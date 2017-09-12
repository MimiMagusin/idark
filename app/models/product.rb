class Product < ApplicationRecord
  belongs_to :catalogue

  validates :name, presence: true
  validates :price, presence: true
  # validates :image, presence: true
  validates :description, presence: true



  def bargain?
    price < 100
  end
end
