class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # attr_accessor :first_name, :last_name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :places
  has_many :menu_items, through: :places
end
