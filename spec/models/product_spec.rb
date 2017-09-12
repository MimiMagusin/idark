require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price)  }
    it { is_expected.to validate_presence_of(:image)  }
    it { is_expected.to validate_presence_of(:description)  }
  end

  pending "#bargain?" do
    let(:user) { create :user }
    let!(:bargain_product) { create :product, price: 50}
    let!(:non_bargain_product) { create :product, price: 200}

    it "returns true if the price is higher than 100 bitcoin" do
    expect(bargain_product.bargain?).to eq(true)
    expect(non_bargain_product.bargain?).to eq(false)
    end
  end


  describe "association with catalogue" do
    let(:catalogue){ create :catalogue}

    it {is_expected.to belong_to :catalogue}
  end

  
end
