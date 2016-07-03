json.array!(@weeknesses) do |weekness|
  json.extract! weekness, :id, :type, :percent
  json.url weekness_url(weekness, format: :json)
end
