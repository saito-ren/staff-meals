class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum position: {店長: 1, 副店長: 2, 調理責任者: 3, 接客責任者: 4, キッチン: 5, ホール: 6}

  def full_name
  	first_name + " " + last_name
  end

  def full_name_kana
  	full_name_kana + " " + last_name_kana
  end
end
