class Category < ApplicationRecord
	has_many :menus, dependent: :destroy
	attachment :image
	validates :name, presence: true
end
