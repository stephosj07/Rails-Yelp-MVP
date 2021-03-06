class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true,
            inclusion: { in: [0, 1, 2, 3, 4, 5], message: "The rating must be a number between 0 and 5" },
            numericality: { only_integer: true, message: "Only numbers are allowed"}

  def blank_stars
    5 - rating
  end
end
