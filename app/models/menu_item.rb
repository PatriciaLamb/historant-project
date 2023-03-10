class MenuItem < ApplicationRecord
  belongs_to :place
  has_one_attached :photo
  has_one :user, through: :place

  validates :name, :description, :visit_date, presence: true
end
