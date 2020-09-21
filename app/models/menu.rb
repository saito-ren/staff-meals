class Menu < ApplicationRecord
  enum status: { 在庫あり: 1, 品切れ: 2 }

  belongs_to :category
  has_many :orders

  attachment :image

  validates :name, presence: true
  validates :introduction, presence: true
end
