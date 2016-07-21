require "rails_helper"

RSpec.describe "creating product" do 
	before do
		visit "/products/new"
	end
	it "creates a new product and redirect to the products page" do
		fill_in "Name", with: "Product1"
		fill_in "Description", with: "Product1 Description"
		fill_in "Price", with: "450.00"
		click_button "Create"
		expect(current_path).to eq("/products")
		expect(page).to have_text("Product1")
	end	

	it "returns to the products new page if does not pass validations with errors" do
			click_button "Create"
			expect(current_path).to eq("/products/new")
			expect(page).to have_text("Name can't be blank")
			expect(page).to have_text("Description can't be blank")
			expect(page).to have_text("Pricing can't be blank")
	end
end