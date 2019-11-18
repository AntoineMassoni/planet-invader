class User < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :planets
  validates :first_name, :last_name, :phone_number, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
