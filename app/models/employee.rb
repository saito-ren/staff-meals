class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: { 男: 1, 女: 2}
  enum status: { 有効:false, 退会済み:true}
  enum position: {店長: 1, 副店長: 2, 調理責任者: 3, 接客責任者: 4, キッチン: 5, ホール: 6}

  has_many :orders

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :email, presence: true, uniqueness: true

  def full_name
  	first_name + " " + last_name
  end

  def full_name_kana
  	first_name_kana + " " + last_name_kana
  end

  def active_for_authentication?
    super && (self.status? == 有効?)
  end

  def inactive_message
    "退会済みです"
  end
  
end
