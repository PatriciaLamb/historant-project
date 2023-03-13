class MenuItem < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:category, :name, :description]

  belongs_to :place
  has_one_attached :photo
  has_one :user, through: :place

  validates :name, :description, :visit_date, presence: true

  pg_search_scope :global_search,
  against: [:category, :name, :description],
  associated_against: {
    place: [:category, :name, :address, :cuisine]
  },
  using: {
    tsearch: { prefix: true }
  }
end
