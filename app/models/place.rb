class Place < ApplicationRecord
  belongs_to :user
  has_many :menu_items, dependent: :destroy
  geocoded_by :address

  validates :name, :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
