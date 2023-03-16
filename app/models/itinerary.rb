class Itinerary < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :itinerary_activity_joins, through: :activities
  has_many :itinerary_notes
  has_many_attached :photos
  pg_search_scope :search_name, against: [:name, :description, :location],
  using: {
    tsearch: { prefix: true }
  }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
