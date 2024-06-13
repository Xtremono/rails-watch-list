require "json"
require "open-uri"
puts "Cleaning database..."
Movie.destroy_all
puts "Creating movies..."
url = "https://tmdb.lewagon.com/movie/top_rated"
movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)
movie_id = 0
10.times do
  movie_id = movie_id += 1
  Movie.create(title: movie["results"][movie_id]["original_title"],
  overview: movie["results"][movie_id]["overview"],
  poster_url: movie["results"][movie_id]["poster_path"],
  rating: movie["results"][movie_id]["vote_average"])
end
