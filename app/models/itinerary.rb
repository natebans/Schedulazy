class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :itinerary_notes
  has_many_attached :photos
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :desciption, presence: true
end
