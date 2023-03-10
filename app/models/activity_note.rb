class ActivityNote < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates :description, presence: true
end
