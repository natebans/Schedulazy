class Itinerary < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :itinerary_activity_joins, dependent: :destroy
  has_many :activities, through: :itinerary_activity_joins
  has_many :itinerary_notes
  has_many_attached :photos
  pg_search_scope :search_name, against: [:name, :description, :location],
  using: {
    tsearch: { prefix: true }
  }
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  validates :name, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
