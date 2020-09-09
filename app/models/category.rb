class Category < ApplicationRecord
	has_many :menus
	attachment :image
end
