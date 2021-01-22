class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, length: { in: 10..500 }
  validates :year, numericality: true
end
