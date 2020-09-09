class Menu < ApplicationRecord
	enum status: { 在庫あり:1, 品切れ:2 }
	belongs_to :category
	attachment :image
end
