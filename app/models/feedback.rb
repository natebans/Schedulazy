class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many_attached :photos
end
