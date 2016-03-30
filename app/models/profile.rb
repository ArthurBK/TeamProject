class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

end
