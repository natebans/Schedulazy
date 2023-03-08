class Itinerary < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :activities
  has_many :itinerary_notes
  has_many_attached :photos
  pg_search_scope :search_name, against: [:name, :description, :location],
  using: {
    tsearch: { prefix: true }
  }
end
