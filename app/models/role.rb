class Role < ActiveRecord::Base
  belongs_to :user
  validates :owner, inclusion: { in: [true, false] }
end
