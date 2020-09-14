class Menu < ApplicationRecord
	enum status: { 在庫あり:1, 品切れ:2 }

	belongs_to :category
	belongs_to :order

	attachment :image

    validates :name, presence: true
    validates :introduction, presence: true

end
