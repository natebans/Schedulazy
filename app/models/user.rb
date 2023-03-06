class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :itineraries
  has_many :itineraries_notes
  has_many :activities_notes
  has_many :feedback
  has_many :activities, through: :activities_notes
  has_one_attached :photo
end
