class User < ActiveRecord::Base
  # mount_uploader :photo, PhotoUploader
  has_one :role
  validates :email, presence: true, format: {
   with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
   message: "invalid email"
 }
end
