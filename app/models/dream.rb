class Dream < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates_inclusion_of :private, in: [true, false]
end
