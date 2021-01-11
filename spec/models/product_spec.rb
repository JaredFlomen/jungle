require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'Product will save successfully' do
      @category = Category.new(name: "test")
      @product = @category.products.new(name: 'jared', price: 100, quantity: 10)
      expect(@product).to be_valid
    end
  end
end
