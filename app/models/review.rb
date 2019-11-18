class Review < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  validates :content, :rating, presence: true
  validates :rating, numericality: true
end
