require 'rails_helper'

describe 'Validations' do
 
    before do    
      @category = Category.create(name: 'Apparel')
    end  

    it 'product with all four field should be saved correctly' do
      @product = Product.new(name: "thing", price_cents: 770, quantity: 300, category_id: @category.id)
      @product.save!
      expect(@product).to be_present
    end

    it 'product should have a valid name' do
      @product = Product.new(name: "thing", price_cents: 770, quantity: 300, category_id: @category.id)
      @product.save!
      expect(@product[:name]).to be_present
    end

    it 'product should have a valid price' do
      @product = Product.new(name: "thing", price_cents: 770, quantity: 300, category_id: @category.id)
      @product.save!
      expect(@product[:price_cents]).to be_present
    end

    it 'product should have a valid quantity' do
      @product = Product.new(name: "thing", price_cents: 770, quantity: 300, category_id: @category.id)
      @product.save!
      expect(@product[:quantity]).to be_present
    end

   

    it 'product should have a valid category' do
      @product = Product.new(name: "thing", price_cents: 770, quantity: 300, category_id: @category.id)
      expect(@product[:category_id]).to be_present
    end
 

end