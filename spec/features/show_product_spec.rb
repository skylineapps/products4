require "rails_helper"
RSpec.describe "product page" do 
	it "displays all the information about the product" do
		product = Product.create(name: "Product1", description: "product1 description", pricing: 100)
		visit "/products"
		click_link "SHOW"
		expect(current_path).to eq("/products/#{product.id}")
		expect(page).to have_text("Product1")
		expect(page).to have_text("product1 description")
		expect(page).to have_text("100")
	end
	
end