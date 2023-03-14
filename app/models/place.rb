class Place < ApplicationRecord
  include PgSearch::Model
  belongs_to :user

  validates :name, presence: true

  has_many :menu_items # dependent: :destroy

  accepts_nested_attributes_for :menu_items

  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_category_name_address_cuisine,
  against: [:category, :name, :address, :cuisine],
  using: {
    tsearch: { prefix: true }
  }
end
