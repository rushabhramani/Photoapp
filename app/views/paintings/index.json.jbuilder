json.array!(@paintings) do |painting|
  json.extract! painting, :id, :image, :name
  json.url painting_url(painting, format: :json)
end
