class Review < ActiveRecord::Base
  belongs_to :bike
  belongs_to :user
  validates :description, :presence => { :message => "Description is mandatory, please specify one" }, length: {minimum: 10}
  validates :rating, :presence => { :message => "Rating is mandatory, please specify one" },
  numericality: { only_integer: true,
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 0
  }
end
