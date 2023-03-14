class Place < ApplicationRecord
  belongs_to :user
  has_many :menu_items # dependent: :destroy, inverse_of: :place

  validates :name, presence: true

  accepts_nested_attributes_for :menu_items
end
