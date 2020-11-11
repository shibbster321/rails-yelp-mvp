class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} must belong to one of the following categories: chinese, italian, japanese, french, or belgian" }
  has_many :reviews
  validates_associated :reviews
  has_many :reviews, dependent: :destroy #linked on restaurant.reviews then destroys dependents
end
