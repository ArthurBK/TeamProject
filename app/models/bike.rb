class Bike < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :model, presence: true
  validates :year, presence: true, format: {
    with: /(19|20)\d{2}/i,
    message: "should be a four-digit year"
    }
  validates :displacement, presence: true
  validates :brand, presence: true
  validates :bike_type, presence: true
  # validates :rating, numericality: { only_integer: true,
  #   less_than_or_equal_to: 5,
  #   greater_than_or_equal_to: 0
  #   }
  # # has_one :user, through: :booking
end
