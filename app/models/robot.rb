class Robot < ApplicationRecord
  has_many :lasers
  accepts_nested_attributes_for :lasers
  validates_presence_of :name
  validates :number_of_legs, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :capable_of_love, inclusion: { in: [true, false]}
end
