require 'rails_helper'

RSpec.describe Product, :type => :model do
	it "requires a name" do
		product = Product.new(name:"")
		product.valid?

		expect(product.errors[:name].any?).to eq(true)

	end

	it "requires a pricing" do
		product = Product.new(pricing:"")
		product.valid?

		expect(product.errors[:pricing].any?).to eq(true)

	end

	it "requires a description" do
		product = Product.new(description:"")
		product.valid?

		expect(product.errors[:description].any?).to eq(true)

	end
  # pending "add some examples to (or delete) #{__FILE__}"
end
