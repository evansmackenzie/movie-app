require "http"

response = HTTP.get("http://localhost:3000/api/first_movie_path")

word = response.parse

p word