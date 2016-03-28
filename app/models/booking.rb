class Booking < ActiveRecord::Base
  belongs_to :bike
  belongs_to :user
  validates :checkin, presence: true
  validates :checkout, presence: true
end
