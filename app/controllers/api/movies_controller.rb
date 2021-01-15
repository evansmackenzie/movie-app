class Api::MoviesController < ApplicationController
  def all_movies
    @all_movies = Movies.all
    render "all_movies.json.jb"
  end
end
