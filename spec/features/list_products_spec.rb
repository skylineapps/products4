require "rails_helper"

RSpec.describe "listing products" do 
	it "displays list of products" do
	product = Product.create(name: "Shoe", description: "Walking", pricing: 10)
	product = Product.create(name: "Boots", description: "strutting", pricing: 454)
	visit "/products"
	expect(page).to have_text("Shoe")
	expect(page).to have_text("$10.00")
	expect(page).to have_text("Boots")
	expect(page).to have_text("$454.00")
	end	
	
end