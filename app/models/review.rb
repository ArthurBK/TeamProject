class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :bike
  validates :description, presence: true
  validates :rating, presence: true,
  numericality: { only_integer: true,
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0
  }
end
