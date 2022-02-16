class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  COUNTRIES = %w(chinese italian japanese french belgian)

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: COUNTRIES,
    message: "%{value} is not a valid category"}
end
