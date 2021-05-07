json.extract! movie, :id, :title, :description, :duration, :image, :year, :director_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
