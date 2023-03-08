class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many_attached :photos
  validates :description, presence: true
  validates :rating, presence: true
end
