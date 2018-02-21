class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating,
  presence: true,
  allow_blank: false,
  inclusion: { in: RATINGS },
  numericality: { only_integer: true}
end
