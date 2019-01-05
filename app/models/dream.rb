class Dream < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3 }
  validates :title, presence: true, length: { minimum: 10 }
end
