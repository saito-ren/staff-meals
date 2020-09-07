class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum position: {店長: 1, 副店長: 2, 調理責任者: 3, 接客責任者: 4, キッチン: 5, ホール: 6}
end
