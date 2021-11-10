class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  VALID_CATEGORIES = %w[chinese italian japanese french belgian]
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES, message: "This is not a valid category" }
end
