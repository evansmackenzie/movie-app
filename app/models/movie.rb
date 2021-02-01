class Movie < ApplicationRecord

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  has_many :actors

  validates :title, presence: true
  validates :plot, length: { in: 10..500 }
  validates :year, numericality: true

  def genre_names
    genres.map do |genre|
      genre.name
    end 
  end
end
