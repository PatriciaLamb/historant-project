class Place < ApplicationRecord
  belongs_to :user
  has_many :menu_items, dependent: :destroy

  validates :name, presence: true
end
