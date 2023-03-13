class Place < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :menu_items, dependent: :destroy
  geocoded_by :address

  validates :name, :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_category_name_address_cuisine,
  against: [:category, :name, :address, :cuisine],
  using: {
    tsearch: { prefix: true }
  }
end
