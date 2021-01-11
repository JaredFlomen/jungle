require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'Product will save successfully' do
      @category = Category.new(name: "test")
      @product = @category.products.new(name: 'jared', price: 100, quantity: 10)
      expect(@product).to be_valid
    end
    it 'Tests when quantity is nil' do
      @category = Category.new(name: "test")
      @product = @category.products.new(name: 'jared', price: 100, quantity: nil)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end
    it 'Tests when name is nil' do
      @category = Category.new(name: "test")
      @product = @category.products.new(name: nil, price: 100, quantity: 10)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end
    it 'Tests when price is nil' do
      @category = Category.new(name: "test")
      @product = @category.products.new(name: 'Jared', price: nil, quantity: 10)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end
  end
end
