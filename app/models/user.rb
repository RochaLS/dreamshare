class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  validates :first_name, presence: true, length: { minimum: 2 }, format: { with: /\A[a-zA-Z]+\z/ }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :email, presence: true, uniqueness: true

  has_many :dreams
end
