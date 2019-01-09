class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :dreams
  mount_uploader :photo, PhotoUploader
end
