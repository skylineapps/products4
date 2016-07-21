class Product < ActiveRecord::Base
	validates :name, :pricing, :description, presence: :true

end
